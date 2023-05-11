%dw 2.0
output application/json
---
(payload map ((item, index) -> {
"NAME": item.Name,
"CASAS":
item.CASAS map ((item, index)->{
"CALLE": item.Calle
})
}))
//mapping inside the data