return {
	require("lspconfig").omnisharp.setup({
		cmd = { "dotnet", "/home/jesper/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll" },
		on_attach = function(client, bufnr)
			vim.api.nvim_create_autocmd("BufWritePost", {
				pattern = { "*.cs", "*.vb" },
			})
		end,
		capabilities = vim.lsp.protocol.make_client_capabilities(),
	}),
}
