(* 単語の意味 *)
let john = "john" ;;
let mary = "mary" ;;
let love obj sbj = "love(" ^ sbj ^ ", " ^ obj ^ ")" ;;
let know obj sbj = "know(" ^ sbj ^ ", " ^ obj ^ ")" ;;
let everyone x = shift (fun k -> "forall " ^ x ^ ". " ^ k x) ;;

(* テスト *)
(* John loves everyone *)
let test1 = 
  reset (fun () -> love (everyone "x") john) = "forall x. love(john, x)" ;;

(* Mary knows everyone *)
let test2 =
  reset (fun () -> know (everyone "y") mary) = "forall y. know(mary, y)" ;;