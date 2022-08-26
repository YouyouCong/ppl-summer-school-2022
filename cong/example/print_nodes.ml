(* 二分木 *)
type tree_t =
  Leaf
| Node of tree_t * int * tree_t ;;

(* 二分木の例 *)
let tree1 = Node (Node (Leaf, 1, Leaf), 2, Node (Leaf, 3, Leaf)) ;;
let tree2 = Node (Leaf, 1, Node (Node (Leaf, 2, Leaf), 3, Leaf)) ;;
let tree3 = Node (Node (Leaf, 2, Leaf), 1, Node (Leaf, 3, Leaf)) ;;

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

(* ノードの値を出力する *)
let rec print_nodes tree =
  let rec loop r = 
    match r with
      Done -> ()
    | Next (n, k) ->
       print_int n; loop (k ()) in
  loop (start tree) ;;

(* 動作例 *)
print_nodes tree1 ;;
print_nodes tree2 ;;
print_nodes tree3 ;;