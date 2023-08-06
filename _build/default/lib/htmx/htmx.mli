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

val htmx_ajax_to_string : htmx_ajax -> string
val htmx_general_to_string : htmx_general -> string
val a_htmx_post : string -> 'a Tyxml_html.attrib
val a_htmx_get : string -> 'a Tyxml_html.attrib
val a_htmx_put : string -> 'a Tyxml_html.attrib
val a_htmx_patch : string -> 'a Tyxml_html.attrib
val a_htmx_delete : string -> 'a Tyxml_html.attrib
val a_htmx_trigger : string -> 'a Tyxml_html.attrib
val a_htmx_swap : string -> 'a Tyxml_html.attrib
val a_htmx_target : string -> 'a Tyxml_html.attrib
val a_htmx_indicator : string -> 'a Tyxml_html.attrib
val a_htmx_sync : string -> 'a Tyxml_html.attrib
val a_htmx_confirm : string -> 'a Tyxml_html.attrib
val a_htmx_oob : string -> 'a Tyxml_html.attrib
val a_htmx_boost : string -> 'a Tyxml_html.attrib
