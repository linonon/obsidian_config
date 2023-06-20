# My Remote Obsidian's Valut Configeration

## Related GitHub Repositories

- private_notes
- notes
- learning-process

## How to use

### Clone this repository

```sh
git clone https://github.com/linonon/obsidian_config.git
```

### Create a symbolic link

macOS

```sh
ln -fsn ./obsidian-vault/ {path_to_your_config}/.obsidian
```

Windows

```sh
cmd /c mklink /d  .obsidian '..\obsidian_config\obsidian-vault\'
```

### Open Obsidian

1. Select `Open folder as vault`
2. `cmd+p` and search `git clone`
3. clone the repo you need

### set up auto git commit in crontab

```sh
# each hour
0 * * * * /bin/bash {path_to}/obsidian_config/auto_git_commit.sh
```
