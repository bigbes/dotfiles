" autocmd FileType diff,kconfig setlocal tabstop=8

function! s:LinuxFormatting()
    setlocal tabstop=8
    setlocal shiftwidth=8
    setlocal textwidth=80
    setlocal noexpandtab

    setlocal cindent
    setlocal formatoptions=tcqlron
    setlocal cinoptions=:0,l1,t0,g0
endfunction

function! s:LinuxKeywords()
    if exists("s:clk")
        return
    endif
    let s:clk = 1
    syn keyword cOperator likely unlikely
    syn keyword cType u8 u16 u32 u64 s8 s16 s32 s64
endfunction

function! s:LinuxHighlighting()
    if exists("s:chl")
        return
    endif
    let s:chl = 1
    highlight default link LinuxError ErrorMsg

    syn match LinuxError / \+\ze\t/     " spaces before tab
    syn match LinuxError /\s\+$/        " trailing whitespaces
    syn match LinuxError /\%81v.\+/     " virtual column 81 and more
endfunction

call s:LinuxFormatting()
call s:LinuxKeywords()
call s:LinuxHighlighting()

set colorcolumn=80
