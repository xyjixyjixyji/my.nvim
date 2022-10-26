local git_blame = require('gitblame')
require('lualine').setup {
    options = {
        theme = 'gruvbox',
    },
	sections = {
            lualine_c = {
                { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available }
            }
    },
}
