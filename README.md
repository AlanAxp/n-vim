# Neo(Vim)

Como instalar y como configurar NeoVim

## Mac

1. Instalar neovim con ayuda de brew

```bash
brew install neovim
```

2. Crear los folders

```bash
mkdir ./config/nvim/
mkdir ./config/nvim/autoload
mkdir ./config/nvim/autoload/plugged
```

3. Colocar el archivo `Plug.vim` dentro de tal que su ruta sea

```bash
.config/nvim/autoload/Plug.vim
```

NOTA: Para mayor facilidad se puede agregar de la siguiente manera (estando dentro de autoload)

```bash
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -o Plug.vim
```

4. Finalmente colocar el archivo `init.vim` dentro del folder `nvim`

`.config/nvim/init.vim`


## Ubuntu

TODO: Instalacion y config en ubuntu
