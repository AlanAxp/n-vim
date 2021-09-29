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

## Windows

La instalación en windows es tan sencilla como lo seria en los ya mencionados... casi.

1. Instarlar chocolatey (un gestor de paquetes como lo es brew para mac)

    [link instalar chocolatey](https://chocolatey.org/install)
    
2. Instalar neovim como viene en la [pagina oficial](https://community.chocolatey.org/packages/neovim/0.5.0) 

    ```bash
    choco install neovim
    ```
    
3. Instalar vim Plug con el comando que se optiene de la [pagina oficial](https://github.com/junegunn/vim-plug)

    ```cmd
    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
    ```
    
4. Al descargar neovim, este se instala en `C:\User\Usuario\AppData\local\nvim-data\site\`, el cual debemos modificar para que quede con la misma estructura de arbol como en ubuntu/mac, es decir...

    4.1 Substituir el nombre `nvim-data` por `nvim`
    4.2 Eliminar folder `site` y poner sus directorios en `nvim`, tal que sea

        `nvim\autoload`
        `nvim\`
        TODO: Continuar con esto cuando tengo la compu con windows`

5. Arrglar la ruta del vim init para que pueda leer el sistema de archivos de windows 

    `TODO: Agregar la ruta`

6. Disfrutar


# Instalación de los plugins

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
    "coc-html": ">=1.4.1",
    "coc-pyright": ">=1.1.166",
    "coc-rust-analyzer": ">=0.52.0",
    "coc-svelte": ">=0.4.0",
    "coc-tsserver": ">=1.8.6"
  }
}

```
