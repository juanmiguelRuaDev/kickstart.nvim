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
