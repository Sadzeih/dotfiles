local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

autocmd({ "VimEnter" }, { callback = function (data)
    -- buffer is a real file on the disk
    local real_file = vim.fn.filereadable(data.file) == 1
     -- buffer is a directory
    local directory = vim.fn.isdirectory(data.file) == 1

  -- buffer is a [No Name]
    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

    if not real_file and not no_name and not directory then
      return
    end
    if directory then
      -- change to the directory
      vim.cmd.cd(data.file)
    end

  -- open the tree, find the file but don't focus it
    require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })
  end
})

local import_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
autocmd({"BufWritePre"}, {
  pattern = "*.go",
  callback = function()
   -- require('go.format').goimport()
   require('go.format').goimport()
  end,
  group = import_sync_grp,
})
