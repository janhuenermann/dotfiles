### Installation
Add a symlink in `~/.config/user/` pointing to this repo.

```bash
ln -s $PATH_TO_REPO ~/.config/user
```

After that, add the following line to `~/.zshrc`.
```bash
source ~/.config/user/zsh/env.bash
```

**NVIM**

Create symlink in `~/.config/nvim` pointing to `nvim/` of this repo.

### Latex commands

Conveniently create a latex project by running:
```
latex_create_ws $PROJECT_NAME
```

**Requirements for Latex commands**

- LaTeX. I recommend [TinyTeX](https://github.com/yihui/tinytex).
- Ghostscript. `brew install ghostscript`

### Other Tools

- [**Homebrew**](https://brew.sh/): Package manager for MacOS
- [**Secretive**](https://github.com/maxgoedjen/secretive): Store SSH keys in Secure Enclave and authenticate using Touch ID
- [**TinyTex**](https://yihui.org/tinytex/): Install Latex with only the packages that you need
- [**Skim**](https://skim-app.sourceforge.io/): A really good PDF viewer for MacOS

