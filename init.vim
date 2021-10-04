""""""""""""""""" Inicio de la configuración """"""""""""""""""""""""

let mapleader=" "
set numberwidth=1
set showmatch "Para que se muestren los parentesis cerrados y abiertos
set number "Numeros a la izq de las lineas
set mouse=a "Que se permita usar el mouse en vim
set clipboard=unnamed "Nos permite copiar desde el editor
set encoding=UTF-8 "Se explica por si solo
set sw=4 
set showcmd "Que se muestren los comandos que el teclean en el cmd
set relativenumber "El numero relativo de lineas desde la posicion actual


call plug#begin('~/.config/nvim/plugged')

"Utilidad
Plug 'vim-airline/vim-airline' "barra de estatus
Plug 'yggdroot/indentline' "identacion
Plug 'chun-yang/auto-pairs' "autocompletar parentesis
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Generar la multilinea
Plug 'tpope/vim-surround' " Para poder abrir y cerrar parentesis.

"Navegacion
Plug 'ryanoasis/vim-devicons' "iconos en nerdtree
Plug 'easymotion/vim-easymotion' "encontrar palabra por dos characters
Plug 'yuttie/comfortable-motion.vim' "scroll suave
Plug 'scrooloose/nerdtree' "Para iver el arbol de la izq de archivos
Plug 'christoomey/vim-tmux-navigator' "Para navegar entre las ventanas

" Navegacion de archivos
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"themes
Plug 'ap/vim-css-color' "color en css
Plug 'joshdick/onedark.vim' "tema de onedark
Plug 'rafi/awesome-vim-colorschemes'  "muchos temas
Plug 'liuchengxu/space-vim-dark'
Plug 'ghifarit53/tokyonight-vim'


"Remarcar syntax
Plug 'evanleck/vim-svelte'  "Extension para svelte
Plug 'leafgarland/typescript-vim' "Extension de highlighting
Plug 'pangloss/vim-javascript' "Extencion para usar javascript
Plug 'rust-lang/rust.vim' "Extension para usar Rust mas cool
Plug 'elzr/vim-json' " Remarcado de Jsons
Plug 'cespare/vim-toml' " Remarcado para archivos toml
Plug 'tpope/vim-markdown' " Remarcado para archivos markdown
Plug 'JuliaEditorSupport/julia-vim' " Extension para usar julia

"autocomplteado
"Plug 'ervandew/supertab' "Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocomplteado fifi
Plug 'mattn/emmet-vim'
Plug 'tomtom/tcomment_vim'

" Uso con GIT
Plug 'tpope/vim-fugitive'


call plug#end()

let g:comfortable_motion_no_default_key_mappings = 1
let g:completion_motion_scroll_down_key = "j"
let g:completion_motion_scroll_up_key = "k"

set cursorcolumn
set cursorline
let g:indentLine_char='▏' "┆ ┊ ┆

"""""""""""""""""""""""""""""""""" Remapeando ESC """""""""""""""""""""""""""""

inoremap jF <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" INDENTACION 4 ESPACIOS"""""""""""""""""""""""""""""""""

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""" JSON config""""""""""""""""""""""""""""""""""""""""""

let g:vim_json_syntax_conceal = 0 "comillas en jsons
filetype on
autocmd BufNewFile,BufRead *.json set filetype=json
autocmd FileType json let g:latex_to_unicode_tab = 0

augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=4
  autocmd FileType json set softtabstop=4 tabstop=4
  autocmd FileType json set expandtab
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Evitar problemas con sql scripts
let g:omni_sql_default_compl_type = 'syntax'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
let g:typescript_indent_disable = 1 "Identar en typescript
"filetype plugin indent on "Esto se pide para activar la de rust lang

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""" COLORSCHEMA y TEMA"""""""""""""""""""""""""""""""""""

set guifont=normal
set termguicolors

""""""""CONFIGURACION space vim dark theme """""""""""""""""""""""""""""""""""""

colorscheme space-vim-dark    
color space-vim-dark
hi LineNr ctermbg=NONE guibg=NONE

""""""""CONFIGURACION tokyonight theme """""""""""""""""""""""""""""""""""""

"let g:tokyonight_style = 'storm' " available: night, storm
"let g:tokyonight_enable_italic = 1
"colorscheme tokyonight

"hi Comment guifg=#505A87 ctermfg=59 "#575757 #6D6D6E

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""" Mejor indentacion""""""""""""""""""""""""""""""""""""

" Para poder identar presionando, en modo de bloque visual y con mayor o menor
vnoremap < <gv
vnoremap > >gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""" FZF config"""""""""""""""""""""""""""""""""""""""""""

" Para hacer uso de ripgreb Rg, se necesita instalar
" sudo apt-get install ripgrep

nmap <Leader>fs :FZF<CR>
nmap <Leader>gt :Rg<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""" NERDTree config""""""""""""""""""""""""""""""""""""""

let NERDTreeQuitOnOpen=1 "Para que se cierre una vez que abri un archivo
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>R :NERDTreeRefreshRoot<CR>
nmap <Leader>nt :NERDTreeFind<CR>

let NERDTreeShowHidden=1 " Mostrar archivos ocultos

let g:NERDTreeDirArrowExpandable = '▶'  " '▸'
let g:NERDTreeDirArrowCollapsible =  '▼'   " '▾'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

"Para crecer hacia la derecha
nmap <Leader>ng :vertical resize +5<CR>
"Para crecer hacia la izquierda
nmap <Leader>nf :vertical resize -5<CR>
"Para que queden del mismo tamano
nmap <Leader>nb :winc =<CR>
" Bajar linea sin tener que estar seleccionada, tambien funciona :m+ :m-2 respectivamente
"nmap <Leader>m :move -2<CR>

nmap M :move +1<CR>
" subir una linea sin tener que seleccionarla toda
nmap m :m-2<CR>

" Subir una linea seleccionada con shift+v
xnoremap m :m-2<CR>gv=gv

" Bajar una linea seleccionada con shift+v
xnoremap M :m'>+<CR>gv=gv

" Soporte para el uso de copy en WSL (se ve horrible  cuando se copia al clipboard)
" Solo activarlo cuando se use en windows
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" COMPATIBILIDAD CON JULIA"""""""""""""""""""""""""""""""

filetype on
autocmd BufNewFile,BufRead *.jl setlocal ft=julia
autocmd FileType julia let g:latex_to_unicode_tab = 0

""""Los comentados de momento parecen ser no necesarios

" autocmd FileType julia let g:AutoPairsShortcutFastWrap = 0
" autocmd FileType julia let g:AutoPairsMapCR = 0
" autocmd FileType julia let g:latex_to_unicode_auto = 1
" autocmd FileType julia let g:latex_to_unicode_cmd_mapping = ['<C-J>']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" CONFIGURACION SVELTE"""""""""""""""""""""""""""""""""""

let g:svelte_indent_style = 1
let g:svelte_indent_script = 1
let g:svelte_preprocessors = ['typescript']
let g:vim_svelte_plugin_use_typescript = 1


autocmd BufNewFile,BufRead *.svelte set filetype=svelte


""""""""""""""""""" EMMET CONFIGURATION (HTML) """"""""""""""""""""""""""""""

let g:user_emmet_install_global = 0
autocmd FileType html,css,svelte EmmetInstall

let g:user_emmet_mode='n' " Emmet solo funcionara en normal mode, para evitar
                            " problemas con las comas
let g:user_emmet_leader_key=',' " El atajo para activarl el emmet sera ','


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" CONFIGURACION MARKDOWN"""""""""""""""""""""""""""""""""

let g:markdown_fenced_languages = ['python', 'bash=sh', 'rust', 'toml']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" CONFIGURACION DEL COC""""""""""""""""""""""""""""""""""

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
