let css_form bg_color = [ "border"; "p-4"; "rounded-md"; "bg-" ^ bg_color; "shadow" ]
let css_text_gray weight = [ "text-gray-" ^ weight ]

let css_button ~bg_color ~txt_color =
  [ "text-" ^ txt_color; "bg-" ^ bg_color ^ "-500"; "px-2"; "py-1"; "rounded" ]
;;
