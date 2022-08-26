(* リストを逆順に並べる *)
let reverse lst = 
  let rec reverse' lst =
    match lst with
      [] -> []
    | x :: xs -> 
      shift (fun k -> x :: k (reverse' xs))
  in reset (fun () -> reverse' lst) ;;

(* テスト *)
let test1 = reverse [1; 2; 3] = [3; 2; 1] ;;
let test2 = 
  reverse ["S"; "U"; "M"; "M"; "E"; "R"] = ["R"; "E"; "M"; "M"; "U"; "S"] ;;