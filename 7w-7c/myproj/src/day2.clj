(ns day2
  (:import (clojure.core.protocols CollReduce)))

(defn word-frequencies
  [words]
  (reduce
    (fn [counts word] (assoc counts word (inc (get counts word 0))))
    {}
    words))
;(word-frequencies ["wot","onw","onw"])

(defn get-words [text] (re-seq #"\w+" text))
(def pages ["one potato tow potato four five",
            " potato six potato seven potato more"])


(def merge-counts (partial merge-with +))

(pmap #(frequencies (get-words %)) pages)

(defn count-words-parallel [pages]
  (reduce merge-counts (pmap #(frequencies (get-words %)) pages)))

(count-words-parallel pages)

(require '[clojure.core.reducers :as r])

(r/map (partial * 2) [1 2 3 4])

(defprotocol MyCollReduce
  (coll-reduce [coll f] [coll f init]))

(defn my-reduce
  ([f coll] (coll-reduce coll f))
  ([f init coll] (coll-reduce coll f init)))

;(my-reduce + [1 2 3 4])

(defn make-reducer [reducible transformf]
  (reify MyCollReduce
    (coll-reduce [_ f1]
      (coll-reduce reducible (transformf f1) (f1)))
    (coll-reduce [_ f1 init]
      (coll-reduce reducible (transformf f1) init))))

(defn my-map [mapf reducible]
  (make-reducer reducible (fn [reducef] (fn [acc v] (reducef acc (mapf v))))))

(into [] (my-map (partial * 2) [1 2 3 4 5]))