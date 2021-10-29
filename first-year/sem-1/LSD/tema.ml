let rec manna_pnueli x = if x >= 12 then x - 1 else manna_pnueli(manna_pnueli(x + 2));;
(*manna_pnueli 2*)

let rec sterge lista lista_noua n = match lista with 
| [] -> List.fold_left (fun r e -> e::r) [] lista_noua
| h::t when n<0 -> sterge t (h::lista_noua) n
| h::t when n=0 -> sterge t lista_noua (n-1)
| h::t -> sterge t (h::lista_noua)  (n-1)
;;
let rec sterge2 lista n = match lista with 
| [] -> []
| h::t when n = 0 -> sterge2 t (n-1)
| h::t -> h :: sterge2 t (n-1)
;;
(*sterge [1;2;3;4;5] [] 2*)

let filtru_invers lista cond= List.fold_left (fun r e -> if cond e then r else e :: r )[] lista;;
filtru_invers [1;2;3;4;5;6] (fun x -> x mod 2 == 0);;

let rec combinare  l1 l2 = match l1 with 
| [] -> List.fold_left (fun r e -> e::r) l1 l2
| h::t -> combinare t (h::l2)
;;

let rec suma_nr nr = let s = 0 in if nr = 0 then s else 
        s + (nr mod 10) + suma_nr (nr / 10)
;;

let produs lista cond = List.fold_right (fun e r -> if cond e then e* r else r ) lista 1;;
produs [1;2;3;4;5;6] (fun x -> x mod 2 == 0)
;;
