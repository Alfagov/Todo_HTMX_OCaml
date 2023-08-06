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
  let open Css_templates in
  li
    ~a:[ a_id id; a_class (css_form "white") ]
    [ div
        ~a:[ a_class (css_text_gray "800"); Htmx.a_htmx_delete "/test" ]
        [ txt name; txt " - "; txt desc ]
    ; div
        ~a:[ a_class [ "mt-2"; "space-x-2" ] ]
        [ button
            ~a:[ a_class (css_button ~bg_color:"red" ~txt_color:"white"); test "test" ]
            []
        ]
    ]
;;
