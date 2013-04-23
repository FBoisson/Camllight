(* $Id: load.ml,v 1.3 1994/11/10 09:57:20 xleroy Exp $ *)

#open "token";;
#open "parser";;
#open "semant";;
#open "typing";;
#open "main";;

load_object "hash";
load_object "asl";
load_object "token";
load_object "parser";
load_object "semant";
load_object "typing";
load_object "main";;

