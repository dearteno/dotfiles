require("prettier").setup({
	bin = "prettierd", -- or `'prettierd'` (v0.23.3+)
	filetypes = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
		"tmpl",
		"templ",
		"proto",
	},
	cli_options = {
		arrow_parens = "always",
		bracket_spacing = true,
		bracket_same_line = false,
		embedded_language_formatting = "auto",
		end_of_line = "lf",
		html_whitespace_sensitivity = "css",
		jsx_single_quote = false,
		print_width = 80,
		prose_wrap = "preserve",
		quote_props = "as-needed",
		semi = false,
		single_attribute_per_line = false,
		single_quote = false,
		tab_width = 4,
		trailing_comma = "es5",
		use_tabs = false,
		vue_indent_script_and_style = false,
	},
})

vim.api.nvim_set_keymap("n", "<leader>fp", ":Prettier<CR>", { noremap = true, silent = true })
