llet rec puissance x = function
  | 0 -> 1
  | 1 -> x
  | n when (n mod 2=0) -> let c= (puissance x (n/2)) in c*c
  | n -> let c= (puissance x (n/2)) in c*c*x;;

let evalue p x =
  let nul = vect_of_list p
  and n = list_length p 
  and res = ref 0 
  in (
      for i = 0 to (n-1) do res:=!res + nul.(i)*(puissance x i);done;
      !res
  );;


let rec randlist  = function
  | 0 -> []
  | n -> (random__int 1432)::(randlist (n-1));;

(* fait le bug *)

let c n = evalue (randlist n) 12;;

for i = 1 to 10  do 
  (function  _ -> ()) (c 131020);
done ;;

(* occupation de la mémoire jusqu'à 8G et + *)

let debug s i = print_string s;print_int i;print_newline ();;

let testv n =
  let w = make_vect n (make_vect 10 0.0) in
    (
      for i = 0 to (n-1) do
	debug "-> " i;
	w.(i)<- make_vect  1500000 1.345;
      done
    );w;;

(function _ -> ()) (testv 1000);;

for i = 1 to 10  do 
  (function  _ -> ()) (c 131020);
done ;;
