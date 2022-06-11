" set guicursor
set nohlsearch
set number
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set cmdheight=2
set updatetime=50
set colorcolumn=80
set mouse=a
set clipboard=unnamed
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set cursorline
set wildmenu

call plug#begin()

    Plug 'arcticicestudio/nord-vim'

    Plug 'tpope/vim-commentary'

    Plug 'github/copilot.vim'

    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'

    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'goolord/alpha.vim'

    Plug 'jiangmiao/auto-pairs'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Code completion
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'

    call plug#end()

colorscheme nord

let mapleader = " "
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>c :Copilot panel<CR>

" ----------------------------------------------------------------------------
" @Lualine setup
lua << end
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
end

" ----------------------------------------------------------------------------
" @Alpha setup

lua << alphaend
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[              °°.                                 ]],
	[[             °*oO#                                ]],
	[[ "henlo dad"  *#*.##           .**                ]],
	[[             .oO*°OO##OO##o*oOoO#o                ]],
	[[              O##Oo**O@@##@##**o°    "such wow"   ]],
	[[              0@@@   @@@@@@   @o                  ]],
	[[             .@@@@@OoO@@@@@oO@o.                  ]],
	[[             o#@o.o###*   .#@O    "cheeze pls"    ]],
	[[            °**##  ..     *O°                     ]],
	[[            *o°°o#° oooOOO*°...                   ]],
	[[            ..°..°°.O@#O##O°O##Oo...°°..          ]],
	[[           o°         °o#@@O#@@@#OOo°*.           ]],
	[[           #o         O@@@@@@@#OOO##@@@*          ]],
	[[           ##*       O#@@@##**o.**O@##@*          ]],
	[[           O##O°     .O##OO   *Oo..o@#@o          ]],
	[[           O@@#...  .  .oo* °*O@*  ..O@O          ]],
	[[           O@@#         o*O** *@#  .. #@O         ]],
	[[           O@@°         *O#oo°#@°   °°*@#*        ]],
	[[           O@@o         oO#*O@@#O     @@@@        ]],
	[[ooOOO#####O@@@##@@@@@@@@O#O°###@@@##O#@#@@@@@@@@@#]],
	[[oo*ooOOOOO@@@#OOOOOOOOOOO@**@###@@@@@@@@@@@@@@@@@@]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "Austin Nazworth ft. Curry"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
alphaend

lua << CMPEND
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

--   פּ ﯟ   some other good icons
local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ["<CR>"] = cmp.mapping.confirm { select = true },
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  experimental = {
    --ghost_text = false,
    native_menu = false,
  },
}
CMPEND

lua << TreesitterEnd
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "java", "python", "rust", "javascript",
    "typescript", "html", "css"},

    highlight = {
        enable = true,
        },
    }
TreesitterEnd
