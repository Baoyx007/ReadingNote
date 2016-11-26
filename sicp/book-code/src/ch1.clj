(ns ch1)



(def dx 0.00001)
(defn deriv [g]
  (fn [x] (/ (- (g (+ x dx)) (g x)) dx)))

(defn cube [x] (* x x x))
;((deriv cube) 5)


(defn double [f] #(f (f %)))

(defn compose [f g] #(f (g %)))

(defn repeated [f time]
  (if (= time 1)
    f
    (compose f (repeated f (- time 1)))))
(defn repeated2 [f time]
  (defn iter [time result])
  (iter time))

(defn smooth [f]
  #(/ (+ (f (- % dx)) (f %) (f (+ % dx))) 3))


(defn iterative-imporve [good? improve]
  (fn se [guess]
    (let [next (improve guess)]
      (if (good? guess next)
        next
        (se next)))))