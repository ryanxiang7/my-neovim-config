---@type MappingsTable
local M = {}
local Util = require("custom.util")
M.general = {
  n = {
    -- open lazy.nvim
    ["<leader>l"] = {"<cmd>:Lazy<cr>","Lazy"},
    -- quit all
    ["<leader>qq"] = {"<cmd>qa<cr>","Quit all"},
    -- lazygit
    ["<leader>gg"] = {
      function ()
        Util.float_term({"lazygit"},{cwd = Util.get_root(),esc_esc =false})
      end,
      "Lazygit (root dir)"
    },
    ["<leader>gG"] = {
      function ()
        Util.float_term({"lazygit"},{esc_esc =false})
      end,
      "Lazygit (cwd)"
    },
    -- move lines
    ["<A-j>"] = {"<cmd>m .+1<cr>==","Move down"},
    ["<A-k>"] = {"<cmd>m .-2<cr>==","Move up"},
    -- Resize window using <ctrl> arrow keys ↑ + ， ↓ - ， ← + ， → -
    ["<C-Up>"] = {"<cmd>resize +2<cr>", "Increase window height"},
    ["<C-Down>"] = {"<cmd>resize -2<cr>", "Decrease window height"},
    ["<C-Left>"] = {"<cmd>vertical resize +2<cr>", "Decrease window width"},
    ["<C-Right>"] = {"<cmd>vertical resize -2<cr>", "Increase window width"},
    -- window
    ["<leader>-"] ={"<C-W>s","Split window below"},
    ["<leader>|"] ={"<C-W>v","Split window right"},
    ["<leader>wd"] ={"<C-W>c","Delete window"},
  },
  i ={
    ["jj"] = { "<ESC>", "return to normal mode" },
    ["<A-j>"] = {"<cmd>m .+1<cr>==","Move down"},
    ["<A-k>"] = {"<cmd>m .-2<cr>==","Move up"},
  },
  v = {
    ["<A-j>"] = {"<cmd>m .+1<cr>==","Move down"},
    ["<A-k>"] = {"<cmd>m .-2<cr>==","Move up"},
  }
}

-- more keybinds!
 M.lspconfig = {
  n = {
    ["gh"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "lsp hover",
    },
  }
}
return M
