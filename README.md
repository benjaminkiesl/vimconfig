# My VIM Configuration

## Getting Started

All the files in this repository (except for `README.md`, `.git`, and `.gitignore`, of course) are supposed to end up in your home directory `~`. 

The file `.vimrc` just contains a single line that makes sure that the file `~/.vim/vimrc` will be your "actual" `vimrc`.

## Setting up VIM Mode for the bash

To set up vim mode for the bash, put the following line into `~/.bashrc`:

```
set -o vi
```

The file `.inputrc` from this repository configures the bash so that the cursor changes depending on whether you are in insert mode or edit mode.

## Configuring SyncTex 

To make SyncTex work, add the following line to `~/.bashrc`:

```
alias vim='vim --servername VIM'
```

If you are using Okular as the PDF viewer, then in Okular you need to go to 
`Settings > Configure Okular > Editor` and choose "Custom Text Editor" as editor. 
Enter the following text under "Command": `gvim --remote-silent %f -c %l`

## Configuring VIM Shortcuts for JetBrains IDEs

The file `.ideavimrc` contains vim configuration for JetBrains IDEs (IntelliJ, PyCharm, etc.). For this to work, you need to install the [IdeaVim plugin](https://plugins.jetbrains.com/plugin/164-ideavim) for your JetBrains IDE.
To allow for line wrapping via the command `gq`, you additionally need to install [Andrew Brookins's Wrap to Column plugin](https://plugins.jetbrains.com/plugin/7234-wrap-to-column).
