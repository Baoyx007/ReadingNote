(ns ch2.tree)

(def a (cons '(1 2) '(3 4)))

(defn count-leaves [x]
  ; (println x)
  (cond (and (coll? x) (empty? x)) 0
        (not (coll? x)) 1
        :else (+ (count-leaves (first x))
                 (count-leaves (rest x)))))

(count-leaves a)


(defn my-reverse [a]
  (if (empty? a)
    nil
    (conj (my-reverse (rest a)) (first a))))


(defn deep-reverse [a]
  (println a)
  (if (empty? a)
    nil
    (conj (deep-reverse (rest a))
          (let [f (first a)]
            (if (coll? f) (deep-reverse f) f)))))

(def x [[1 2] [3 4]])
(def lx (list '(1 2) '(3 4)))
(deep-reverse x)
(my-reverse x)

(defn fringe [tree]
  ;(println tree)
  (cond (and (coll? tree) (empty? tree)) nil
        (not (coll? tree)) (print tree)
        :else (do (fringe (first tree))
                  (fringe (rest tree)))))