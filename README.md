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

1. Instalar neovim con los siguientes comandos

```bash
sudo apt-get update
sudo apt-get install neovim
```

2. La instalación del los puglins y la creacion de la carpeta de configuración es analoga a lo anterior

Nota: Si este proceso no funciona, recurrir al template encontrado en [Vim Bootstrap](https://vim-bootstrap.com/), y colocar el archivo generado en el folder `.config/nvim` bajo el nombre `init.vim`

```bash
mv ruta/a/generate.vim ruta/a/.config/nvim
```

## Instalación de los plugins

Plug.vim nos permite acceder a una gran variedad de plugins, los cuales podremos encontrar en [Vim Awesome](https://vimawesome.com/).

Para instalar los plugins ejecutar dentro de nvim 

```bash
:PlugInstall
```
## Autocompletado con CoC

Para hacer uso del autocompletado con COC, hacer:

```bash
:CoCInstall <nombre>
```

La información detallada se puede encontrar en [CoC Languge Servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers)


Language servers instalados

```json
{
  "dependencies": {
    "coc-pyright": ">=1.1.166",
    "coc-rust-analyzer": ">=0.52.0",
    "coc-svelte": ">=0.4.0",
    "coc-tsserver": ">=1.8.6"
  }
}

```
