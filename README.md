# macos laptop setup

A repo to host config files and notes about the setup of my Mac Pro laptop at Shopify

* Configure the laptop for the Shopify environment as per the [documentation](https://vault.shopify.io/pages/1859-MacOS-and-Setup)

* Install `oh-my-zsh`:
  ```sh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

* Install `dev`:
  ```sh
  eval "$(curl -sS https://up.dev)"
  ```

  `dev` installs `homebrew`, no need to install it manually.

* TODO: install `gcloud` stuff, including the `cloudplatform` repo and setup scripts

* Clone this repository

 
## Homebrew packages

The following are packages I installed explicitly using `homebrew`:


| Package  | Link      | Comment    |
|----------|-----------|------------|
| bat      | https://github.com/sharkdp/bat  | A supercharged `cat` |
| exa      | https://the.exa.website/  | Alternative to `ls` |
| fd       | https://github.com/sharkdp/fd | Fast alternative to `find` |
| glow     | https://github.com/charmbracelet/glow | Render markdown on the CLI |
| jump     | https://github.com/gsamokovarov/jump | Quick dir navigator |
| kitty    | https://github.com/kovidgoyal/kitty | A lightweight terminal emulator |
| micro    | https://micro-editor.github.io/ | Because I don't like `vi`! |
| nnn      | https://github.com/jarun/nnn | A terminal file manager (1)|
| rg       | https://github.com/BurntSushi/ripgrep | A replacement for `grep` |
| tmux     | https://github.com/tmux/tmux | **The** terminal multiplexer |

  
(1) install plugins with 
`curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh`


* Run the following command to install the packages:
  ```
  brew install bat exa fd glow jump kitty micro nnn unzip rg tmux
  ```

* Change dir to this repo's clone and run the script `./config.sh` to set up all the required config files

* Log out from all terminals and open a new one (try `kitty`!)
