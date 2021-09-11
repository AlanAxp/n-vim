set number " Activar la numeracion de lineas
set mouse=a " Activar la interaccion del mouse con nvim
set numberwidth " Modificar el ancho de la numeracion de lineas
set clipboard=unnamed " Para activar el copiar desde nvim
syntax enable " Activar resaltado 
set showcmd " Que se muestren los comandos en terminal
set ruler " Activar en que linea estamos
set encoding=utf-8
set showmatch " Mostrar el parentesis que cierra y abre
set sw=2 " Identacion con dos espacios
set relativenumber " linea cero dependiendo de donde este el cursor
set laststatus=2 " Siempre poder ver el estatus
" set noshowmode Para no mostrar el insertar, visual, etc

" Para poder instalar paquetes tenemos que hacer uso de Vim PLug
call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'morhetz/gruvbox' " Instalar Tema
  Plug 'easymotion/vim-easymotion' " Saltar lineas grandes con teclado
  Plug 'scrooloose/nerdtree' " Tener un arbol de archivos
  Plug 'christoomey/vim-tmux-navigator' " PLugin para navegar entre archivos abiertos (crtl*h o ctrl+l)
call plug#end()

let mapleader=" " " La tecla lider para los atajos sera el espacio

" Atajos personalizados para poder hacer cosas poquito mas rapido
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

colorscheme gruvbox " Activar el esquema de color que hemos instalado


" nmap Que el atajo funcione en el modo normal 
nmap <leader>s <Plug>(easymotion-s2)

" La siguiente configuracion pertenece al plugin nerdtree

" Significa que podremos abrir nerdtree haciendo uso de space*nt
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1



