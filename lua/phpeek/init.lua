--------------------------------------------------------------------------------
-- phpeek configuration initialization script
--------------------------------------------------------------------------------

require("phpeek.packer")
-- runs plugins first so that everything is available for later stages
require('phpeek.core.options')
require('phpeek.core.keymaps')
require('phpeek.core.autocmd')
require('phpeek.core.completions')
require('phpeek.core.lsp')

