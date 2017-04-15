(ns practise2.29)
(defn make-mobile [left right]
  (list left right))

(defn make-branch [length structure]
  (list length structure))

(defn left-branch [mobile]
  (first mobile))

(defn right-branch [mobile]
  (first (rest mobile)))
(defn branch-length [branch]
  (first branch))

(defn branch-structure [branch]
  (first (rest branch)))
(defn ismobile? [structure]
  (coll? structure))

(defn branch-weight [branch]
  ;(println branch)
  (let [s (branch-structure branch)]
    (if (ismobile? s)
      (total-weight s)
      s)))

(defn total-weight [mobile]
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

;; A test mobile:
;; Level
;; -----
;; 3                   4  |    8
;;              +---------+--------+ 2
;; 2         3  |  9
;;        +-----+----+ 1
;; 1    1 | 2
;;    +---+---+
;;    2       1

(def level-1-mobile (make-mobile (make-branch 2 1)
                                 (make-branch 1 2)))
(def level-2-mobile (make-mobile (make-branch 3 level-1-mobile)
                                 (make-branch 9 1)))
(def level-3-mobile (make-mobile (make-branch 4 level-2-mobile)
                                 (make-branch 8 2)))

(total-weight level-1-mobile)
(total-weight level-2-mobile)
(total-weight level-3-mobile)


(defn isbalanced? [mobile]
  (let [lb (left-branch mobile)
        rb (right-branch mobile)]
    (= (* (branch-length lb) (branch-weight lb))
       (* (branch-length rb) (branch-weight rb))
       )))


(defn scale-tree [tree factor]
  (map (fn [sub-tree]
         (if (coll? sub-tree)
           (scale-tree sub-tree factor)
           (* sub-tree factor)))
       tree))