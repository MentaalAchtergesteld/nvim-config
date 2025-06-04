local alpha = require('alpha')
local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[                         @@@* %***%@@#- @**#@#   @@@#:  #@@+        *%# @%##@%                       ]],
[[                   @***#%@#*********************#@%*****%@***#@* +@**%@%@**=..%                      ]],
[[ #-         +%***************************************************%**%.  .@*++@.@                     ]],
[[  @#*%@@@***#%**************************************************@***#::@.**@.@@%+                    ]],
[[    %@*********************************************************@*****@.@@.%*@-.@**%@@%==        =*   ]],
[[       @%****************************************************#@*******@-.@*******************#%@@+%  ]],
[[             =+##@@@%****************#@**********************@#=====@%**********************@=*@%=@= ]],
[[                      :%@%***%#********%******************@#*@==========*%@@@@@@@@@@@@@@@@%%@**====@ ]],
[[                            #%#%*******%***********@*******@*%+===================================@  ]],
[[                           @****@******%#**********@*******@***@=========*@@@%%@@@@@@@@%%%####%@**   ]],
[[                          @******##*****@::@@@%%###%%******@**%@@@@*=========================+#@+    ]],
[[                           @@***@@#***%@#*@@@@*     @*****@ ******%-                                 ]],
[[                              @#@@@**********%@    @*****@# @*****@                                  ]],
[[                                    @%***%@        @******#%*****@**@-                               ]],
[[                                                   %=@@#@@   :#@@@@--*                               ]],
}

dashboard.section.buttons.val = {
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "󰍉  Find file", ":lua require('fzf-lua').files() <CR>"),
	dashboard.button("t", "  Browse cwd", ":NvimTreeOpen<CR>"),
	dashboard.button("r", "  Browse src", ":e ~/.local/src/<CR>"),
	dashboard.button("s", "󰯂  Browse scripts", ":e ~/scripts/<CR>"),
	dashboard.button("c", "  Config", ":e ~/.config/nvim/<CR>"),
	dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/config/mappings.lua<CR>"),
	dashboard.button("p", "  Plugins", ":PlugInstall<CR>"),
	dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
}

function update_quote()
		dashboard.section.footer.val = require("config.quotes").get_quote()
		alpha.redraw()
end

local timer = vim.loop.new_timer()

vim.api.nvim_create_autocmd("User", {
		pattern = "AlphaReady",
		callback = function()
				timer:stop()
				timer:start(0, 10000, vim.schedule_wrap(function() update_quote() end))
		end
})

vim.api.nvim_create_autocmd("BufUnload", {
		pattern = "*",
		callback = function()
				timer:stop()
		end
})

dashboard.section.buttons.opts.hl = "Keyword"
dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
