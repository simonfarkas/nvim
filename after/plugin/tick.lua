require('tick').setup({
	data_dir = vim.fn.stdpath("data") .. "/tick",
	default_billing_rate = 0,
	default_currency = "EUR",
	currencies = {
		USD = { symbol = "$", rate = 1.0 },
		EUR = { symbol = "€", rate = 0.93 },
		GBP = { symbol = "£", rate = 0.80 },
		JPY = { symbol = "¥", rate = 154.50 },
	},
	save_on_exit = true,
	projects_file = "projects.json",
	ui = {
		border = "rounded",
		width = 60,
		height = 19,
	}
})
