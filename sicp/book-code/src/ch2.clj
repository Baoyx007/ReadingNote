(ns ch2)

(defn abs [n] (max n (- n)))
(defn gcd [a b]
  (if (= b 0)
    a
    (gcd b (mod a b))))
(defn make-rat [n d]
  (let [g ((if (< d 0) - +) (abs (gcd n d)))]
    (conj [] (/ n g) (/ d g))))                             ;从分子和分布获得有理数

(defn numer [x] (first x))                                  ;get 分子

(defn denom [x] (second x))                                 ;get 分母

(defn add-rat [x y]
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(defn sub-rat [x y]
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(defn mul-rat [x y]
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(defn div-rat [x y]
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(defn equal-rat? [x y]
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(def x '(1 2))
(def y [1 2])
(def z (conj x y))
(rest (rest z))
(def a (make-rat 1 2))
(numer a)

(defn print-rat [x]
  (println (numer x) "/" (denom x)))

(print-rat a)




;;

(def one-third (make-rat 1 -3))
(print-rat (add-rat one-third one-third))

(def one2three (cons 1 (cons 2 (cons 3 nil))))

(defn length [items]
  (defn iter [a ret]
    (println a ret)
    (if (empty? a)
      ret
      (iter (rest a) (+ 1 ret))))
  (iter items 0))

(length one2three)

(defn last-pair [a]
  (if (= 1 (length a))
    (first a)
    (last-pair (rest a))))

(last-pair one2three)

(defn my-reverse [a]
  (if (empty? a)
    nil
    (cons (my-reverse (rest a)) (first a))))


;(my-reverse one2three)

(defn same-parity [head & rear]
  (filter #(= (mod head 2) (mod % 2)) rear))

(same-parity 1 2 3 4 5 6 7)



