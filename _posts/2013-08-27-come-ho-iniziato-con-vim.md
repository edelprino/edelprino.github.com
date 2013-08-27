---
layout: page
title: Come ho iniziato con vim
draft: true
---
### 1. Vundle
Gestisci i pacchetti con [Vundle](https://github.com/gmarik/vundle) o con [Pathogen](https://github.com/tpope/vim-pathogen). Plugin, Temi, Script, in questo modo installare e disinstallare plugin non sarà più un problema.

### 2. CtrlP
[CtrlP](https://github.com/kien/ctrlp.vim) è un plugin che permette di effettuare ricerche "fuzzy". Venendo da Sublime Text ero abituato a spostarmi in maniera veloce tra i file di progetto, credo che sia uno dei plugin che utilizzo di più.

### 3. Powerline
[Poweline](https://github.com/Lokaltog/vim-powerline)

### 4. Disabilitare i tasti freccia

```vim
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
```

### 5. Override di file in sola scrittura

```vim
cmap w!! %!sudo tee > /dev/null %
```
