(ns ch2.tree)

(def a (cons '(1 2) '(3 4)))

(defn count-leaves [x]
  (println x)
  (cond (and (coll? x) (empty? x)) 0
        (not (coll? x)) 1
        :else (+ (count-leaves (first x))
                 (count-leaves (rest x)))))

(count-leaves a)

