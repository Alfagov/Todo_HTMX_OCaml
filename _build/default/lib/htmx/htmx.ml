type htmx_ajax =
  | GET
  | POST
  | PUT
  | PATCH
  | DELETE

type htmx_general =
  | TRIGGER
  | SWAP
  | TARGET
  | INDICATOR
  | SYNC
  | CONFIRM
  | OOB
  | BOOST

let htmx_ajax_to_string = function
  | POST -> "hx-post"
  | GET -> "hx-get"
  | PUT -> "hx-put"
  | PATCH -> "hx-patch"
  | DELETE -> "hx-delete"
;;

let htmx_general_to_string = function
  | TRIGGER -> "hx-trigger"
  | SWAP -> "hx-swap"
  | TARGET -> "hx-target"
  | INDICATOR -> "hx-indicator"
  | SYNC -> "hx-sync"
  | CONFIRM -> "hx-confirm"
  | OOB -> "hx-swap-oob"
  | BOOST -> "hx-boost"
;;

let a_htmx_post value = Tyxml_html.Unsafe.uri_attrib (htmx_ajax_to_string POST) value
let a_htmx_get value = Tyxml_html.Unsafe.uri_attrib (htmx_ajax_to_string GET) value
let a_htmx_put value = Tyxml_html.Unsafe.uri_attrib (htmx_ajax_to_string PUT) value
let a_htmx_patch value = Tyxml_html.Unsafe.uri_attrib (htmx_ajax_to_string PATCH) value
let a_htmx_delete value = Tyxml_html.Unsafe.uri_attrib (htmx_ajax_to_string DELETE) value

let a_htmx_trigger value =
  Tyxml_html.Unsafe.string_attrib (htmx_general_to_string TRIGGER) value
;;

let a_htmx_swap value =
  Tyxml_html.Unsafe.string_attrib (htmx_general_to_string SWAP) value
;;

let a_htmx_target value =
  Tyxml_html.Unsafe.string_attrib (htmx_general_to_string TARGET) value
;;

let a_htmx_indicator value =
  Tyxml_html.Unsafe.string_attrib (htmx_general_to_string INDICATOR) value
;;

let a_htmx_sync value =
  Tyxml_html.Unsafe.string_attrib (htmx_general_to_string SYNC) value
;;

let a_htmx_confirm value =
  Tyxml_html.Unsafe.string_attrib (htmx_general_to_string CONFIRM) value
;;

let a_htmx_oob value = Tyxml_html.Unsafe.string_attrib (htmx_general_to_string OOB) value

let a_htmx_boost value =
  Tyxml_html.Unsafe.string_attrib (htmx_general_to_string BOOST) value
;;
