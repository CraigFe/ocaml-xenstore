(* Generated by Mirage (Wed, 5 Feb 2014 16:21:58 GMT). *)

open Lwt

let console1 () =
  Console.connect "0"

module M1 = Handler.Main(Console)

let t1 () =
  console1 () >>= function
  | `Error e -> fail (Failure "console1")
  | `Ok console1 ->
  M1.start console1

let () =
  OS.Main.run (join [t1 ()])