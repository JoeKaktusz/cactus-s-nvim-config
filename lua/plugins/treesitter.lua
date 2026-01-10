return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 
      "lua", "vim", "vimdoc", "python", "javascript", 
      "typescript", "c", "cpp", "rust", "go", "json", "yaml", "cmake"
    },
    auto_install = true,
    highlight = { 
      enable = true,
    },
    indent = { 
      enable = true 
    },
  },
}

