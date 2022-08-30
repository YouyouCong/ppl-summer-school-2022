(* リストの整数の和を求める *)
let rec sum lst =
  match lst with
    [] -> 0
  | x :: xs ->
     if x < 0 then shift (fun k -> 0)
     else x + sum xs ;;

(* テスト *)
let test1 = reset (fun () -> sum [1; 2; 3]) = 6 ;;
let test2 = reset (fun () -> sum [4; -5; 6]) = 0 ;;