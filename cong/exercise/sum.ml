(* リストの整数の和を求める *)
let rec sum lst = ... ;;

(* テスト *)
let test1 = reset (fun () -> sum [1; 2; 3]) = 6 ;;
let test2 = reset (fun () -> sum [4; -5; 6]) = 0 ;;