return {
    "jose-elias-alvarez/null-ls.nvim",
     opts = function(_, config)
     -- config variable is the default configuration table for the setup function call
     local null_ls = require "null-ls"

        -- Check supported formatters and linters
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
        config.sources = {
            -- Set a formatter
            -- null_ls.builtins.formatting.stylua,
            -- null_ls.builtins.formatting.rustfmt.with({
            --     extra_args = function(params)
            --         local Path = require("plenary.path")
            --         local cargo_toml = Path:new(params.root .. "/" .. "Cargo.toml")

            --         if cargo_toml:exists() and cargo_toml:is_file() then
            --             for _, line in ipairs(cargo_toml:readlines()) do
            --                 local edition = line:match([[^edition%s*=%s*%"(%d+)%"]])
            --                 if edition then
            --                     return { "--edition=" .. edition }
            --                 end
            --             end
            --         end
            --         -- default edition when we don't find `Cargo.toml` or the `edition` in it.
            --         return { "--edition=2021" }
            --     end,
            -- }),
            -- null_ls.builtins.formatting.prettier,
            -- null_ls.builtins.formatting.clang_format,
        }
        return config -- return final config table
    end
}
