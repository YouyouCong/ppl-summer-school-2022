(* ある計算を a と b で実行する *)
let either a b = shift (fun k -> k a; k b) ;;

(* 動作例 *)
reset (fun () ->
  let x = either 1 2 in if x mod 2 = 0 then print_int x) ;;