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

"hi Normal         cterm=NONE        ctermfg=White    ctermbg=NONE      gui=NONE         guifg=White     guibg=NONE
hi Comment        cterm=NONE        ctermfg=Green    ctermbg=NONE      gui=NONE         guifg=Green     guibg=NONE
hi Constant       cterm=NONE        ctermfg=White    ctermbg=NONE      gui=NONE         guifg=White     guibg=NONE
hi Special        cterm=NONE        ctermfg=Yellow   ctermbg=NONE      gui=NONE         guifg=Yellow    guibg=NONE
hi Identifier     cterm=NONE        ctermfg=Cyan     ctermbg=NONE      gui=NONE         guifg=Blue      guibg=NONE
hi Statement      cterm=NONE        ctermfg=Blue     ctermbg=NONE      gui=NONE         guifg=Blue      guibg=NONE
hi Type           cterm=NONE        ctermfg=Red      ctermbg=NONE      gui=NONE         guifg=Green     guibg=NONE
hi PreProc        cterm=NONE        ctermfg=Yellow   ctermbg=NONE      gui=NONE         guifg=Cyan      guibg=NONE

hi Todo           cterm=NONE        ctermfg=White    ctermbg=Red       gui=NONE         guifg=Black     guibg=Yellow
hi Cursor         cterm=NONE        ctermfg=Black    ctermbg=Yellow    gui=NONE         guifg=Black     guibg=White
hi Search         cterm=NONE        ctermfg=Yellow   ctermbg=Red      gui=NONE         guifg=Black     guibg=Yellow
hi IncSearch      cterm=NONE        ctermfg=Black    ctermbg=White     gui=NONE         guifg=Black     guibg=Yellow

hi Folded         cterm=NONE        ctermfg=Cyan     ctermbg=NONE      gui=NONE         guifg=Gray      guibg=Black
hi FoldColumn     cterm=NONE        ctermfg=Cyan     ctermbg=NONE      gui=NONE         guifg=Black     guibg=Gray

hi StatusLine     cterm=NONE        ctermfg=White    ctermbg=Blue      gui=NONE         guifg=White     guibg=DarkBlue
hi StatusLineNC   cterm=NONE        ctermfg=White    ctermbg=Red       gui=NONE         guifg=Black     guibg=DarkRed
hi VertSplit      cterm=NONE        ctermfg=White    ctermbg=Red       gui=NONE         guifg=DarkRed   guibg=NONE
hi NonText        cterm=NONE        ctermfg=Black    ctermbg=NONE      gui=NONE         guifg=Gray      guibg=DarkBlue

hi clear Visual
hi Visual         cterm=NONE        ctermfg=Yellow   ctermbg=Blue      gui=NONE         guifg=Black     guibg=Cyan

hi ModeMsg        cterm=underline   ctermfg=Yellow                     gui=NONE         guifg=Yellow
hi MoreMsg        cterm=underline   ctermfg=Yellow                     gui=NONE         guifg=Yellow
hi Error          cterm=NONE        ctermfg=White    ctermbg=Red       gui=NONE         guifg=White     guibg=Red
hi ErrorMsg       cterm=NONE        ctermfg=White                      gui=NONE         guifg=White
hi WarningMsg     cterm=NONE        ctermfg=Cyan                       gui=NONE         guifg=Cyan

hi DiffText       cterm=NONE        ctermfg=Black    ctermbg=Green     gui=NONE         guifg=Black     guibg=LightGreen
hi DiffAdd        cterm=NONE        ctermfg=Black    ctermbg=Blue      gui=NONE         guifg=Black     guibg=Blue
hi DiffDelete     cterm=NONE        ctermfg=Black    ctermbg=Cyan      gui=NONE         guifg=Black     guibg=Cyan
hi DiffText       cterm=NONE        ctermfg=Black    ctermbg=Red       gui=NONE         guifg=Black     guibg=Red

hi Underlined     cterm=underline                                      gui=underline
hi Ignore         cterm=underline   ctermfg=White    ctermbg=NONE      gui=NONE         guifg=White     guibg=NONE
