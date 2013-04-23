(* $Id: asl.mli,v 1.3 1994/11/10 09:57:19 xleroy Exp $ *)

exception Error of string;;
type 'a option = None | Some of 'a;;
value init_env : string list;;
