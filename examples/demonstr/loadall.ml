compile "prop.mli";;
compile "prop.ml";;
load_object "prop.zo";;
compile "lexuniv.mli";;
compile "lexuniv.ml";;
load_object "lexuniv.zo";;
compile "asynt.mli";;
compile "asynt.ml";;
load_object "asynt.zo";;
compile "demo.ml";;
load_object "demo.zo";;
#open "demo";;
print_string "Pour lancer: boucle();;"; print_newline();;
