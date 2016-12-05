(ns practise2.5
  (:require [clojure.math.numeric-tower :as math]))


(defn exp [x n]
  (reduce * (repeat n x)))
(defn cons [a b]
  (* (exp 2 a) (exp 3 b)))
(defn car [z]
  (defn divisble-by-3? [x] (= (mod x 3) 0))
  (if (divisble-by-3? z)
    (car (/ z 3))
    (/ (Math/log z) (Math/log 2))))

(car (cons 4 5))
