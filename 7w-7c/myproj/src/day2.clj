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
; (pmap #(frequencies (get-words %)) pages)

(defn count-words-parallel [pages]
  (reduce merge-counts (pmap #(frequencies (get-words %)) pages)))

(require '[clojure.core.reducers :as r])

(defprotocol CollReduce
  (coll-reduce [coll f] [coll f init]))

(defn my-reduce
  ([f coll] (coll-reduce coll f))
  ([f init coll] (coll-reduce coll f init)))

