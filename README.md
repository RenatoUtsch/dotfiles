# RenatoUtsch's dotfiles

This repository contains a set of dotfiles portable between different systems
that setup an awesome terminal environment.

Some features:

* Fish
* Vim/Neovim
* Tmux
* 24-bit True Color colorschemes

# Terminal configuration

1. Be sure you're using the latest version of a 24-bit True Color compatible
   terminal that supports ANSI escape sequences. I personally use
   [termite](https://github.com/thestinger/termite) on Linux,
   [iterm2](http://www.iterm2.com/) on Mac OS and
   [ConEmu](https://github.com/Maximus5/ConEmu) on Windows.
1. Change the terminal font to one of the
   [powerline patched fonts](https://github.com/powerline/fonts). I personally
   use Hack 11pt.

# Global Dependencies

List of dependencies that should be installed on your system in the latest
versions:

```
fish
gnu stow
neovim
tmux
vim
```

You can install only one of `vim` or `neovim`, or both.

# Language dependencies

Below are dependencies to be installed for each language you want to use. The
dependencies are intentionally repeated for each language it is used, so that it
is easy to see all dependencies for each language you want to use.

## Bazel

```
buildifier
```

## C / C++

```
clang
clang-format
clang-tidy
```

## JavaScript, HTML, CSS, JSON

```
clang-format
nodejs
```

Dependencies to be installed through `npm` globally (installed with `nodejs`):

```
eslint
eslint-plugin-html
eslint-config-google
js-beautify
```

## Python

Dependencies to be installed through `pip` globally (preferably with Python 3's
version):

```
yapf
pylint
```

## Protobuf

```
clang-format
```

# Installation

Clone this repository together with it's submodules to somewhere in your home:

```shell
git clone --recursive -j8 https://github.com/RenatoUtsch/dotfiles ~/dotfiles
```

Enter the dotfiles directory and use `stow` to symlink what you want. For
example, if you want to use fish's configs, run:

```shell
stow fish
```

This will symlink all files to the appropriate locations.

Please take a look below for additional instructions for each package:

## Vim/Neovim

You only need to run `stow vim` for both Vim and Neovim, as the config files are
shared between both of them.

## Tmux

On Mac OS, you'll need to use iTerm2 and MacOS Sierra or later. For Mac OS only:

1. Install `reattach-to-user-namespace`. It can be installed with homebrew.
1. On iTerm2's settings, enable the "Applications in terminal may access
   clipboard" option.
