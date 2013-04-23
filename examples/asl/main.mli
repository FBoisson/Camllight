(* $Id: main.mli,v 1.3 1994/11/10 09:57:22 xleroy Exp $ *)

value read_fun : unit -> char;;
value go : unit -> unit;;
value input_stream : in_channel ref;;
value trace_parsing : bool ref;;


