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
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.vim <CR>"),
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
