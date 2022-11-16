let formatStringAsFloat = value => Js.String.replaceByRe(%re("/[^\d.-]/g"), "", value)
