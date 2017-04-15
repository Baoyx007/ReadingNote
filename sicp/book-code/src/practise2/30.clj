(ns practise2.30)
(defn square-tree [tree]
  (map (fn [sub-tree]
         (if (coll? sub-tree)
           (square-tree sub-tree)
           (* sub-tree sub-tree)))
       tree))

(def my-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(square-tree my-tree)

(defn tree-map [f tree]
  (map (fn [tree]
         (if (coll? tree)
           (tree-map f tree)
           (f tree)))
       tree))

(defn suqare-tree2 [tree]
  (tree-map #(* % %) tree))

(suqare-tree2 my-tree)
