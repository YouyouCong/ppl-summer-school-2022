(* リストの要素の積を求める *)
let rec times lst = 
  match lst with
    [] -> 1
  | x :: xs -> 
    if x = 0 then shift (fun k -> 0)
    else x * times xs ;;

(* テスト *)
let test1 = reset (fun () -> times [1; 3; 5]) = 15 ;;
let test2 = reset (fun () -> times [4; 0; 2]) = 0 ;;
let test3 = 
  reset (fun () -> times [4; 0; 2]) + reset (fun () -> times [1; 3; 5]) = 15 ;;