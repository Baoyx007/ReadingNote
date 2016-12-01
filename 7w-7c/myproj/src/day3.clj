(ns day3
  (:require [clojure.string :refer [trim]]))

(def sum (future (+ 1 2 3 4 5)))
(deref sum)


(let [a (future (+ 1 2))
      b (future (+ 3 4))]
  (+ @a @b))

(def meaning-of-life (promise))

(future (println "the meaning of life is: " @meaning-of-life))
(deliver meaning-of-life 43)


(defn sentence-split [text]
  (map trim (re-seq #"[^\.!\?:;]+[\.!\?:;]*" text)))

(sentence-split "this is a sentence. Is this? A fragment")


