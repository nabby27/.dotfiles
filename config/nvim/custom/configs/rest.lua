require("rest-nvim").setup({
    result_split_horizontal = false,
    result_split_vertical = true,
    skip_ssl_verification = true,
    result = {
        formatters = {
            json = function(body)
                return vim.fn.system({"jq", "."}, body)
            end,
            html = function(body)
                return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
            end,
        },
    },
    highlight = {
        enabled = true,
        timeout = 150,
    },
    jump_to_request = false,
})
