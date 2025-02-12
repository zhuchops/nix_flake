local indentscope = require "mini.indentscope"

return {
  'echasnovski/mini.indentscope',
  opts = {},
  animation = indentscope.gen_animation.linear({ easing = "out", duration = 10 })
}
