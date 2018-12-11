" Skywalker vim color file
" Maintainer: Gryphon Shafer

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "Skywalker"

" 0 - Black
" 1 - Red
" 2 - Green
" 3 - Yellow
" 4 - Blue
" 5 - Magenta
" 6 - Cyan
" 7 - White

"hi Normal         cterm=none        ctermfg=White    ctermbg=none      gui=none         guifg=White     guibg=none
hi Comment        cterm=none        ctermfg=Green    ctermbg=none      gui=none         guifg=Green     guibg=none
hi Constant       cterm=none        ctermfg=White    ctermbg=none      gui=none         guifg=White     guibg=none
hi Special        cterm=none        ctermfg=Yellow   ctermbg=none      gui=none         guifg=Yellow    guibg=none
hi Identifier     cterm=none        ctermfg=Cyan     ctermbg=none      gui=none         guifg=Blue      guibg=none
hi Statement      cterm=none        ctermfg=Blue     ctermbg=none      gui=none         guifg=Blue      guibg=none
hi Type           cterm=none        ctermfg=Red      ctermbg=none      gui=none         guifg=Green     guibg=none
hi PreProc        cterm=none        ctermfg=Yellow   ctermbg=none      gui=none         guifg=Cyan      guibg=none

hi Todo           cterm=none        ctermfg=White    ctermbg=Red       gui=none         guifg=Black     guibg=Yellow
hi Cursor         cterm=none        ctermfg=Black    ctermbg=Yellow    gui=none         guifg=Black     guibg=White
hi Search         cterm=none        ctermfg=Yellow   ctermbg=Red      gui=none         guifg=Black     guibg=Yellow
hi IncSearch      cterm=none        ctermfg=Black    ctermbg=White     gui=none         guifg=Black     guibg=Yellow

hi Folded         cterm=none        ctermfg=Cyan     ctermbg=none      gui=none         guifg=Gray      guibg=Black
hi FoldColumn     cterm=none        ctermfg=Cyan     ctermbg=none      gui=none         guifg=Black     guibg=Gray

hi StatusLine     cterm=none        ctermfg=White    ctermbg=Blue      gui=none         guifg=White     guibg=DarkBlue
hi StatusLineNC   cterm=none        ctermfg=White    ctermbg=Red       gui=none         guifg=Black     guibg=DarkRed
hi VertSplit      cterm=none        ctermfg=White    ctermbg=Red       gui=none         guifg=DarkRed   guibg=none
hi NonText        cterm=none        ctermfg=Black    ctermbg=none      gui=none         guifg=Gray      guibg=DarkBlue

hi clear Visual
hi Visual         cterm=none        ctermfg=Yellow   ctermbg=Blue      gui=none         guifg=Black     guibg=Cyan

hi ModeMsg        cterm=underline   ctermfg=Yellow                     gui=none         guifg=Yellow
hi MoreMsg        cterm=underline   ctermfg=Yellow                     gui=none         guifg=Yellow
hi Error          cterm=none        ctermfg=White    ctermbg=Red       gui=none         guifg=White     guibg=Red
hi ErrorMsg       cterm=none        ctermfg=White                      gui=none         guifg=White
hi WarningMsg     cterm=none        ctermfg=Cyan                       gui=none         guifg=Cyan

hi DiffText       cterm=none        ctermfg=Black    ctermbg=Green     gui=none         guifg=Black     guibg=LightGreen
hi DiffAdd        cterm=none        ctermfg=Black    ctermbg=Blue      gui=none         guifg=Black     guibg=Blue
hi DiffDelete     cterm=none        ctermfg=Black    ctermbg=Cyan      gui=none         guifg=Black     guibg=Cyan
hi DiffText       cterm=none        ctermfg=Black    ctermbg=Red       gui=none         guifg=Black     guibg=Red

hi Underlined     cterm=underline                                      gui=underline
hi Ignore         cterm=underline   ctermfg=White    ctermbg=none      gui=none         guifg=White     guibg=none
