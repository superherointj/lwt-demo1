let () = print_endline "Worked!";;

let () =
  Lwt_main.run begin
    let%lwt () = Lwt_io.printl "Worked great!" in
    Lwt.return ()
  end
