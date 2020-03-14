## MacOS configuration
This repo includes config files for various tools.

### Installation
Add a symlink in `~/.config/user/` pointing to this repo.

```bash
ln -s $PATH_TO_REPO ~/.config/user
```

After that, add the following line to either `.zshrc` or `.bashrc` depending on what cli you use. I recommend zsh.
```bash
source ~/.config/user/zsh/env.bash
```

#### NVIM
Create symlink in `~/.config/nvim` pointing to `nvim/` of this repo.
