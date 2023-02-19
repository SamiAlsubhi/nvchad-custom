local M = {}

M.general = {
  n = {
    ["<C-h>"] = {"<C-w>h","Left Window"},
    ["<C-j>"]= {"<C-w>j","Below Window"},
    ["<C-k>"]= {"<C-w>k","Up Window"},
    ["<C-l>"]= {"<C-w>l","Right Window"},
    ["<S-l>"]={":bnext<CR>","Next Buffer"},
    ["<S-h>"]={":bprevious<CR>","Prev Buffer"},
    ["<leader>q"] = { ":q<cr>", "Quit" },
    ["<leader>w"] = { ":w<cr>", "Save" },
    ["<leader>h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
    ["<leader>H"] = { ":split<CR>", "Split Horizontally" },
    ["<leader>v"] = { ":vsplit<CR>", "Split Vertically" },
  },
  i = {
    ["jk"] = {"<ESC>", "escape insert mode" , opts = { nowait = true }}
  },
  x = {
    ["jk"] = {"<ESC>"},
  },
  v={
    ["J"]= {":move '>+1<CR>gv-gv"},
    ["K"]= {":move '<-2<CR>gv-gv"},
    ["H"]= {"<gv"},
    ["L"]= {">gv"}
  }
}

M.telescope ={
  n = {
    ["<leader>b"] = {":Telescope buffers<cr>", "View Buffers" },
    ["<leader>f"] = { ":Telescope find_files<cr>", "Telescope Find Files" },
    ["<leader>F"] = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
  }
}

M.lspconfig = {
  n = {
    ["<leader>lR"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "lsp rename",
    },
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "lsp code_action",
    },
    ["<leader>le"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "floating diagnostic",
    },
    ["gk"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "goto prev",
    },
    ["gj"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "goto_next",
    },
  }
}


return M
