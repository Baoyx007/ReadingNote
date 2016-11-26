(ns sum
  (:use clojure.test)
  (:import (java.util HashMap ArrayList)))

(defn sum-loop [numbers]
  (loop [result 0 counter numbers]
    (if (empty? counter)
      result
      (recur (+ (first counter) result) (rest counter)))))

(println (sum-loop [1 2 3 4 5]))

"Hello"

(deftest for-sum (is (= 15 (sum-loop [1 2 3 4 5]))))