open Tyxml_html

let base_page = a ~a:[ a_href "/" ] [ txt "Home" ]

let common_head page_title =
  let page_title = title (txt page_title) in
  head
    ~a:[ a_lang "en" ]
    page_title
    [ meta ~a:[ a_charset "UTF-8" ] ()
    ; meta ~a:[ a_http_equiv "X-UA-Compatible"; a_content "IE=edge" ] ()
    ; meta ~a:[ a_name "viewport"; a_content "width=device-width, initial-scale=1.0" ] ()
    ; script ~a:[ a_src "/static/js" ] (txt "")
    ; link ~rel:[ `Stylesheet ] ~href:"/static/css" ()
    ]
;;

let test = Tyxml_html.Unsafe.uri_attrib "test"
let t1 = Tyxml_html.to_attrib (Tyxml_xml.string_attrib "test" "test")

let todo_list_element id name desc =
  li
    ~a:[ a_id id; a_class [ "border"; "p-4"; "rounded-md"; "bg-white"; "shadow" ] ]
    [ div ~a:[ a_class [ "text-gray-800" ] ] [ txt name; txt " - "; txt desc ]
    ; div
        ~a:[ a_class [ "mt-2"; "space-x-2" ] ]
        [ button
            ~a:
              [ a_class [ "text-white"; "bg-red-500"; "px-2"; "py-1"; "rounded" ]
              ; test "test"
              ]
            []
        ]
    ]
;;
