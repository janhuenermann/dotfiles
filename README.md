## MacOS configuration
This repo includes config files for various tools. Requires zsh.

### Installation
Add a symlink in `~/.config/user/` pointing to this repo.

```bash
ln -s $PATH_TO_REPO ~/.config/user
```

After that, add the following line to `~/.zshrc`.
```bash
source ~/.config/user/zsh/env.bash
```

#### NVIM
Create symlink in `~/.config/nvim` pointing to `nvim/` of this repo.

### Latex
Conveniently create a latex project by running:
```
latex_create_ws $PROJECT_NAME
```

Requirements: 
- LaTeX. I recommend [TinyTeX](https://github.com/yihui/tinytex).
- Ghostscript. `brew install ghostscript`