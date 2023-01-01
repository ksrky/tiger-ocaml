module Parse = struct
  let test() = for i = 1 to 49 do
    let filename = "../testcases/test" ^ string_of_int i ^ ".tig" in
    print_endline ("> " ^ filename);
    let absyn = Tiger.Parse.parse filename in
    Tiger.PrintAbsyn.print(stdout, absyn)
  done
end

(*let%expect_test "trivial" = Parse.test*)
let () = Parse.test()