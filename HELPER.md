# NVIM HELPERS


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
