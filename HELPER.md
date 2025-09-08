# NVIM HELPERS

## Moving around

Official documentation [here](https://neovim.io/doc/user/usr_03.html) 

- `gg` go to the beginning of the files
- `G` go to the end of the files
- `nG` go to the nth line of the files
- `0` go to the beginning of the lines
- `$` go to the end of the lines
- `w` go to the beginning of the next word
- `b` go to the beginning of the previous word
- `e` go to the end of the current word
- `H` go to the top of the screen
- `M` go to the middle of the screen
- `L` go to the bottom of the screen
- `{` go to the beginning of the previous paragraph
- `}` go to the beginning of the next paragraph
- `Ctrl + d` go down half a screen
- `Ctrl + u` go up half a screen
- `Ctrl + f` go down a full screen
- `Ctrl + b` go up a full screen
- `*` search for the word under the cursor
- `#` search for the word under the cursor in reverse direction



## Replace regex in selected lines

```vim
:%s/old/new/g
```

## Add a comment to selected lines

```vim
:'<,'>s/^/# /g
```

## Find and replace in all files

- Open telescope file browser `<leader>sf`

- Then, write the command to find and replace in all files

```bash 
:cdo %s/old/new/gc # apply the change to the resutlt
:cfdo %s/old/new/gc # apply the change to the current file
```

## Add a tab to selected lines

- Select the lines in visual mode

- click `>` to add a tab
- click `<` to remove a tab

Aslo add the number of tabs you want to add/remove before clicking `>` or `<`. For example, `3>` will add 3 tabs to the selected lines.



## Repeat or undo last action

- click `.` to repeat the last action
- click `u` to undo the last action


## Fold and unfold shortcuts

[Reference](https://www.jackfranklin.co.uk/blog/code-folding-in-vim-neovim/)

- `za` toggle Fold
- `zR` unfold all
- `zM` fold all
- `zk` fold one level up
- `zj` unfold one level down


## Change the colorscheme

- `:colorscheme <name_of_colorscheme>` to change the colorscheme
