-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  -- Mason: installs and manages all LSP servers, linters, and formatters
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Web
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "eslint-lsp",
        "prettier",

        -- Python
        "pyright",
        "ruff",

        -- C/C++
        "clangd",

        -- Java
        "jdtls",
      },
    },
  },

  -- LSP server configurations
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- HTML
        html = {},

        -- CSS
        cssls = {},

        -- JavaScript / TypeScript (handled by the TS extra, listed for clarity)
        ts_ls = {},

        -- ESLint
        eslint = {
          on_attach = function(_, bufnr)
            -- Auto-fix on save
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              command = "EslintFixAll",
            })
          end,
        },

        -- Python
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic", -- "off" | "basic" | "strict"
                autoImportCompletions = true,
              },
            },
          },
        },

        -- C/C++
        clangd = {
          cmd = { "clangd", "--compile-commands-dir=build" },
          filetypes = { "c", "cpp", "objc", "objcpp" },
        },

        -- Java (nvim-jdtls handles most config, this is supplemental)
        jdtls = {
          settings = {
            java = {
              configuration = {
                runtimes = {
                  { name = "JavaSE-17", path = "/usr/lib/jvm/java-17-openjdk" },
                  { name = "JavaSE-21", path = "/usr/lib/jvm/java-21-openjdk" },
                },
              },
            },
          },
        },
      },
    },
  },
}
