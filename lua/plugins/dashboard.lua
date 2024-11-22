return {
	"folke/snacks.nvim",
	opts = {
		dashboard = {
			preset = {
				header = [[
        ██████╗██╗   ██╗██████╗ ██████╗ ██╗   ██╗██╗   ██╗██╗███╗   ███╗ 
        ██╔════╝██║   ██║██╔══██╗██╔══██╗╚██╗ ██╔╝██║   ██║██║████╗ ████║
        ██║     ██║   ██║██████╔╝██████╔╝ ╚████╔╝ ██║   ██║██║██╔████╔██║
        ██║     ██║   ██║██╔══██╗██╔══██╗  ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║
        ╚██████╗╚██████╔╝██║  ██║██║  ██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
        ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝ 
                                                                         
                              °°.                                        
                            °*oO#                                        
            "henlo dad"      *#*.##           .**                        
                            .oO*°OO##OO##o*oOoO#o                        
                              O##Oo**O@@##@##**o°          "such wow"    
                              0@@@   @@@@@@   @o                         
                            .@@@@@OoO@@@@@oO@o.                          
                            o#@o.o###*   .#@O       "cheeze pls"         
                            °**##  ..     *O°                            
                            *o°°o#° oooOOO*°...                          
                            ..°..°°.O@#O##O°O##Oo...°°..                 
                          o°         °o#@@O#@@@#OOo°*.                   
                          #o         O@@@@@@@#OOO##@@@*                  
                          ##*       O#@@@##**o.**O@##@*                  
                          O##O°     .O##OO   *Oo..o@#@o                  
                          O@@#...  .  .oo* °*O@*  ..O@O                  
                          O@@#         o*O** *@#  .. #@O                 
                          O@@°         *O#oo°#@°   °°*@#*                
                          O@@o         oO#*O@@#O     @@@@                
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
			},
			sections = {
				{ section = "header" },
				{
					icon = " ",
					title = "Recent Files",
					section = "recent_files",
					indent = 2,
					padding = { 2, 6 },
					pane = 2,
				},
				{
					section = "keys",
					pane = 2,
					padding = 2,
				},
				{ section = "startup", pane = 2, padding = 2 },
			},
		},
	},
}
