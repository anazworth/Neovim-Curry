# Neovim-Curry
## Neovim, the Curry edition
This is my own personal Neovim configuration, inspired by my dog Curry. I've
kept things lightweight and simple while still maintaining useful features such
as LSP functionality and Github Copilot, which I use in my day-to-day work.
Feel free to try it out for yourself or make suggestions, I'd love to hear
feedback.

I give much credit and thanks to [Christian Chiarulli](github.com/ChristianChiarulli) for his work
on creating a wonderful Neovim base config to build upon.

![Curry](screenshots/Curry.png)

# Prerequisites
- Make sure you have the latest version of [Neovim](https://github.com/neovim/neovim) installed.

- Make sure you have a proper [Nerd Font](https://nerdfonts.com) installed and enabled in your terminal.

- Remove your current Neovim directory. I recommend not fully deleting it, just in case you decide to revert back to Neovim's default configuration.

# Installation
Run the following command in your terminal emulator to clone Neovim-Curry into your nvim directory.

```
git clone https://github.com/anazworth/Neovim-Curry.git ~/.config/nvim
```

In your terminal emulator, run 'nvim'. The plugins will automatically install.

If you do not have access to Github Copilot, you can go to "/lua/user/plugins.lua" and comment out
```
use "github/copilot.vim"
```

### Optional

- To enable Neovim node support

```
npm i -g neovim
```

- To enable Neovim python support

```
pip install pynvim
```

### Theme

I use [Nord theme](https://www.nordtheme.com).
- To change the theme to your liking, replace the following line found in "lua/user/plugins.lua" with your favorite theme.
```
use "shaunsingh/nord.nvim"
```

- Then go to the "init.lua" file and change the following line to your theme's name.
```
vim.cmd[[colorscheme *your theme name*]]
```
