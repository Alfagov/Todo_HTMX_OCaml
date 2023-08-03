let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router
       [ Dream.post "/test" (fun request ->
           let open Lwt.Syntax in
           let* body = Dream.body request in
           Dream.respond ~headers:[ "Content-Type", "application/octet-stream" ] body)
       ]
;;
