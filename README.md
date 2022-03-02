---
title: MacOS Laptop Setup
---

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


| Package                                             | Comment                                               |
|-----------------------------------------------------|-------------------------------------------------------|
| [bat](https://github.com/sharkdp/bat)               | A supercharged `cat`                                  |
| [emacs](https://www.gnu.org/software/emacs/)        | The real text editor (see section below)              |
| [exa](https://the.exa.website/)                     | Alternative to `ls`                                   |
| [fd](https://github.com/sharkdp/fd)                 | Fast alternative to `find`                            |
| [gh](https://cli.github.com/)                       | The GitHub CLI                                        |
| [git](https://git-scm.com/)                         | The latest git (apple's is outdated)                  |
| [glow](https://github.com/charmbracelet/glow)       | Render markdown on the CLI                            |
| [htop](https://htop.dev/)                           | Interactive process viewer                            |
| [jump](https://github.com/gsamokovarov/jump)        | Quick dir navigator                                   |
| [kitty](https://github.com/kovidgoyal/kitty)        | A lightweight terminal emulator                       |
| [krew](https://github.com/kubernetes-sigs/krew)     | The plugin manager for the kubectl command-line tool  |
| [kubectx](https://github.com/ahmetb/kubectx)        | kubectl context/namespace switch tool                 |
| [lazygit](https://github.com/jesseduffield/lazygit) | A simple terminal UI for git commands (1)             |
| [lua](https://www.lua.org)                          | An embeddable scripting language                      |
| [micro](https://micro-editor.github.io/)            | Because I don't like `vi`! (2)                        |
| [most](https://www.jedsoft.org/most/index.html)     | Fancy pager                                           |
| [nmap](https://nmap.org/)                           | A utility for network discovery and security auditing |
| [nnn](https://github.com/jarun/nnn)                 | A terminal file manager (3)                           |
| [rg](https://github.com/BurntSushi/ripgrep)         | A replacement for `grep`                              |
| [rustup](https://www.rust-lang.org/tools/install)   | The rust compiler and tools (4)                       |
| [tmux](https://github.com/tmux/tmux)                | **The** terminal multiplexer                          |

(1) install with
`brew install jesseduffield/lazygit/lazygit`

(2) install the Go plugin with
`micro -plugin install go`
  
(3) install plugins with 
`curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh`

(4) run `rustup-init` to install the compiler. Verify with `rustc --version`


* Run the following command to install the packages:
  ```
  brew install bat exa fd gh git glow htop jump kitty krew kubectxlua \
  micro most nmap nnn unzip rg rustup tmux 
  ```

* Change dir to this repo's clone and run the script `./config.sh` to set up all the required config files

* Log out from all terminals and open a new one (try `kitty`!)

## Installing Emacs

Install Emacs using homebrew for use on the terminal only.

``` sh
brew install emacs
brew link emacs
```

Install [Emacs Prelude](https://prelude.emacsredux.com/) which
provides a sensible and well documented setup on top of a default
Emacs installation. Make sure you do not have any `~/.emacs` file or
`~/.emacs.d` folder present to start with.


``` sh
mkdir ~/src/github.com/bbatsov
git clone git://github.com/bbatsov/prelude.git ~/src/github.com/bbatsov/prelude
ln -s ~/src/github.com/bbatsov/prelude ~/.emacs.d
cd ~/emacs.d
cp sample/prelude-modules.el personal
```

You can then customize the `personal` directory as you wish and update
`prelude` by running `git pull`.

Alternatively, you can keep the `personal` folder in this repo under
version control, and soft-link it to your `~.emacs.d` folder:

``` sh
cd ~/emacs.d
git checkout -b pirivan
rm -rf personal
ln -s <this-repo-dir>/.emacs.d/personal ~/.emacs.d
```

### The Emacs Daemon

I run Emacs as a daemon and use `emasclient` as the editor for faster
startup times. To run Emacs as a daemon upon login:

``` sh
ln -s /opt/homebrew/Cellar/emacs/27.2/homebrew.mxcl.emacs.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.emacs.plist
```

I defined the `ec` alias in `.zshrc` to start the client in a terminal window.

**Note**: Changes to the configuration won't take effect unless you
restart the Emacs daemon:

``` sh
emacsclient -e '(kill-emacs)'
```

MacOS restarts the daemon automatically.

