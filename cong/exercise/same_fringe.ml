(* 二分木 *)
type tree_t =
  Leaf
| Node of tree_t * int * tree_t ;;

(* 二分木の例 *)
let tree1 = Node (Node (Leaf, 1, Leaf), 2, Node (Leaf, 3, Leaf)) ;;
let tree2 = Node (Leaf, 1, Node (Node (Leaf, 2, Leaf), 3, Leaf)) ;;
let tree3 = Node (Node (Leaf, 1, Leaf), 3, Node (Leaf, 2, Leaf)) ;;
let tree4 = Node (Node (Leaf, 1, Leaf), 3, Leaf) ;;

(* 計算の状態 *)
type 'a result_t =
  Done
| Next of int * (unit / 'a -> 'a result_t / 'a) ;;

(* 計算を中断する *)
let yield n = shift (fun k -> Next (n, k)) ;;

(* 二分木を左から深さ優先で走査する *)
let rec walk tree =
  match tree with
    Leaf -> ()
  | Node (t1, n, t2) ->
     walk t1;
     yield n;
     walk t2 ;;

(* 二分木の走査を開始する *)
let start tree =
  reset (fun () -> walk tree; Done) ;;

(* 二つの二分木の値の並びが同じかどうかを判定する *)
let same_fringe tree1 tree2 =
  let rec loop r1 r2 = 
    match (r1, r2) with
      (Done, Done) -> ...
    | (Next (n1, k1), Next (n2, k2)) -> ...
    | _ -> ... in
  loop (start tree1) (start tree2) ;;

(* テスト *)
let test1 = same_fringe tree1 tree2 = true ;;
let test2 = same_fringe tree1 tree3 = false ;;
let test3 = same_fringe tree2 tree3 = false ;;
let test4 = same_fringe tree3 tree4 = false ;;