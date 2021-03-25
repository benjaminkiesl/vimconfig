# My VIM Configuration

## Getting Started

All the files in this repository are supposed to end up in your home directory `~`. 

The file `.vimrc` just contains a single line that makes sure that the file `~/.vim/vimrc` will be your "actual" `vimrc`.

## Configuring SyncTex 

To make SyncTex work, add the following line to the file `~/.bashrc`:

```
alias vim='vim --servername VIM'
```

If you are using Okular as the PDF viewer, then in Okular you need to go to 
`Settings > Configure Okular > Editor` and choose "Custom Text Editor" as editor. 
Enter the following text under "Command": `gvim --remote-silent %f -c %l`
