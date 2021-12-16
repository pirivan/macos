# macos

A repo to host config files and notes about the setup of my Mac Pro laptop at Shopify

* Install `dev`:
  ```sh
  eval "$(curl -sS https://up.dev)"
  ```

  `dev` install `homebrew`, no need to install it manually.

* Install `oh my zsh`:
  ```sh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

* Packages I installed explicitly:
  ```
  brew install bat exa micro unzip rg tmux ...
  ```

  | Package  | Link      | Comment    |
  |----------|-----------|------------|
  | bat      | https://github.com/sharkdp/bat  | A supercharged `cat` |
  | exa      | https://the.exa.website/  | Alternative to `ls` |
  | jump     | https://github.com/gsamokovarov/jump | Quick dir navigator |
  | fd       | https://github.com/sharkdp/fd | Fast alternative to `find` |
  | glow     | https://github.com/charmbracelet/glow | Render markdown on the CLI |
  | kitty    | https://github.com/kovidgoyal/kitty | A lightweight terminal emulator |
  | micro    | https://micro-editor.github.io/ | Because I don't like `vi`! |
  | nnn      | https://github.com/jarun/nnn | A terminal file manager |
  | rg       | https://github.com/BurntSushi/ripgrep | A replacement for `grep` |
  | tmux     | https://github.com/tmux/tmux | **The** terminal multiplexer |
  
* Install `nnn`
  ```sh
  brew install nnn
  curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh
  ```

  The script installs plugins in ` ~/.config/nnn/plugins`
  
