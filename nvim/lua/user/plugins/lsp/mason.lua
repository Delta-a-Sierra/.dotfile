local status, mason = pcall(require, "mason")
if not status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup({})

mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"html",
		"cssls",
		"emmet_ls",
		"tailwindcss",
		"tflint",
		"prismals",
		"pyright",
		"gopls",
	},
	automatic_installation = true,
})

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"gofumpt",
		"goimports",
	},
	automatic_installation = true,
})
