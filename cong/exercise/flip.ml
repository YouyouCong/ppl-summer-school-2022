(* 計算を true と false で実行した結果をペアとして返す *)
let flip () = ... ;;

(* テスト *)
let test1 = 
  reset (fun () -> if flip () then 1 else 0) = (1, 0) ;;

let test2 = 
    reset (fun () -> if flip () then "hello" else "bye") = ("hello", "bye") ;;