" vim: set foldlevel=0 foldmethod=marker:

if has('vim_starting')
  call plug#begin($XDG_DATA_HOME . '/vim/bundle')
endif

" Libs {{{
  Plug 'kana/vim-textobj-user'
  Plug 'tpope/vim-repeat'
  Plug 'vim-scripts/l9'
" }}}

" Color Schemes {{{
  Plug 'cartolari/vim-niji', {'for': ['clojure', 'lisp', 'scheme']}
  Plug 'reedes/vim-colors-pencil'
  Plug 'sjl/badwolf'
  Plug 'trapd00r/neverland-vim-theme'
" }}}

" Completions and Snippets {{{
  Plug 'cartolari/vim-clevertab'
  Plug 'honza/vim-snippets'
  Plug 'jiangmiao/auto-pairs'
  Plug 'omnisharp/omnisharp-vim'
  Plug 'sirver/ultisnips'
  Plug 'tpope/vim-endwise', {'for': ['ruby', 'sh', 'zsh', 'vim', 'c', 'cpp']}
  Plug 'valloric/youcompleteme', {
        \ 'do': 'rm -rf third_party/ycmd/ycmd/completers/cs && python3 install.py --clang-completer --gocode-completer --tern-completer'
        \ }
" }}}

" File and Search {{{
  Plug 'dyng/ctrlsf.vim'
  Plug 'henrik/vim-indexed-search'
  Plug 'junegunn/fzf.vim'
  Plug 'shougo/denite.nvim'
" }}}

" General Programming {{{
  Plug 'andrewradev/splitjoin.vim', {'for': [
        \ 'ruby', 'eruby', 'coffee', 'python',
        \ 'javascript', 'html', 'xml', 'css',
        \ 'scss', 'less', 'yaml', 'vim' ]}
  Plug 'andrewradev/switch.vim'
  Plug 'embear/vim-localvimrc'
  Plug 'godlygeek/tabular'
  Plug 'janko-m/vim-test'
  Plug 'majutsushi/tagbar'
  Plug 'sjl/gundo.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tommcdo/vim-exchange'
  Plug 'tommcdo/vim-exchange'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-projectionist'
  Plug 'tpope/vim-rsi'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'vim-scripts/LargeFile'
  Plug 'vim-scripts/YankRing.vim'
  Plug 'w0rp/ale'
" }}}

" Integrations {{{
  Plug 'airblade/vim-gitgutter'
  Plug 'christoomey/vim-tmux-runner'
  Plug 'gregsexton/gitv'
  Plug 'tpope/vim-fugitive'
" }}}

" Language Specific {{{

" ASCII {{{
  Plug 'vim-scripts/AnsiEsc.vim', {'on': 'AnsiEsc'}
" }}}

" Clojure {{{
  Plug 'guns/vim-sexp', {'for': ['clojure', 'lisp', 'scheme']}
  Plug 'tpope/vim-fireplace', {'for': 'clojure'}
  Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['clojure', 'lisp', 'scheme']}
" }}}

" Coffeescript {{{
  Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}
" }}}

" CSS {{{
  Plug 'gorodinskiy/vim-coloresque'
" }}}

" Elm {{{
  Plug 'ElmCast/elm-vim'
" }}}

" Fish {{{
  Plug 'dag/vim-fish'
" }}}

" HTML {{{
  Plug 'othree/html5.vim', {'for': 'html'}
  Plug 'mattn/emmet-vim'
  Plug 'valloric/MatchTagAlways', {'for': ['html', 'xml']}
" }}}

" Markdown {{{
  Plug 'suan/vim-instant-markdown', {'for': 'markdown', 'do': 'npm install -g instant-markdown-d'}
" }}}

" JavaScript {{{
  Plug 'cartolari/JavaScript-Indent', {'for': ['javascript', 'html']}
  Plug 'marijnh/tern_for_vim', {'for': ['html', 'javascript'], 'do': 'npm install'}
  Plug 'mxw/vim-jsx'
  Plug 'posva/vim-vue'
" }}}

" QML {{{
  Plug 'peterhoeg/vim-qml'
" }}}

" Slim {{{
  Plug 'slim-template/vim-slim'
" }}}

" PHP {{{
  Plug 'joonty/vdebug'
" }}}

" Ruby {{{
  Plug 'ecomba/vim-ruby-refactoring'
  Plug 'nelstrom/vim-textobj-rubyblock', {'for': 'ruby'}
  Plug 'sunaku/vim-ruby-minitest'
  Plug 'tpope/vim-rails', {'for': ['ruby', 'eruby', 'yaml', 'haml', 'javascript', 'coffee', 'sass', 'scss']}
  Plug 'vim-ruby/vim-ruby', {'for': ['ruby', 'eruby']}
" }}}

" {{{ Scala
  Plug 'derekwyatt/vim-scala'
" }}}

" Stylus {{{
  Plug 'wavded/vim-stylus'
" }}}

" Terraform {{{
  Plug 'hashivim/vim-terraform'
" }}}

" Typescript {{{
  Plug 'leafgarland/typescript-vim'
  Plug 'Quramy/tsuquyomi'
" }}}

" Tmux {{{
  Plug 'keithbsmiley/tmux.vim', {'for': 'tmux'}
" }}}

" Yaml {{{
  Plug 'ingydotnet/yaml-vim', {'for': 'yaml'}
" }}}

" }}}

" Syntax and Indentation {{{
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'michaeljsmith/vim-indent-object'
" }}}

" UI {{{
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'itchyny/lightline.vim'
  Plug 'konfekt/fastfold'
" }}}

call plug#end()
