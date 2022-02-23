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

* Install `gcloud` SDK, including the `cloudplatform` repo and setup scripts:
  ```sh
  dev clone cloudplatform
  dev up
  ```

* Clone this repository


## Homebrew packages

The following are packages I installed explicitly using `homebrew`:


| Package  |  Comment    |
|----------|------------|
| [bat](https://github.com/sharkdp/bat)| A supercharged `cat` |
| [exa](https://the.exa.website/)  | Alternative to `ls` |
| [fd](https://github.com/sharkdp/fd) | Fast alternative to `find` |
| [gh](https://cli.github.com/) | The GitHub CLI |
| [git](https://git-scm.com/) | The latest git (apple's is outdated) |
| [glow](https://github.com/charmbracelet/glow) | Render markdown on the CLI |
| [htop](https://htop.dev/) | Interactive process viewer |
| [jump](https://github.com/gsamokovarov/jump) | Quick dir navigator |
| [kitty](https://github.com/kovidgoyal/kitty) | A lightweight terminal emulator |
| [lazygit](https://github.com/jesseduffield/lazygit) | A simple terminal UI for git commands (1) |
| [lua](https://www.lua.org) | An embeddable scripting language |
| [micro](https://micro-editor.github.io/) | Because I don't like `vi`! (2)|
| [most](https://www.jedsoft.org/most/index.html) | Fancy pager |
| [nmap](https://nmap.org/) | A utility for network discovery and security auditing |
| [nnn](https://github.com/jarun/nnn) | A terminal file manager (3)|
| [rg](https://github.com/BurntSushi/ripgrep) | A replacement for `grep` |
| [rustup](https://www.rust-lang.org/tools/install)| The rust compiler and tools (4) |
| [tmux](https://github.com/tmux/tmux) | **The** terminal multiplexer |

(1) install with
`brew install jesseduffield/lazygit/lazygit`

(2) install the Go plugin with
`micro -plugin install go`
  
(3) install plugins with 
`curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh`

(4) run `rustup-init` to install the compiler. Verify with `rustc --version`


* Run the following command to install the packages:
  ```
  brew install bat exa fd gh git glow htop jump kitty lua micro most nmap nnn unzip rg rustup tmux
  ```

* Change dir to this repo's clone and run the script `./config.sh` to set up all the required config files

* Log out from all terminals and open a new one (try `kitty`!)
