function! s:power(base, exponent)
    let s:p = 1

    for i in range(a:exponent)
        let s:p = s:p * a:base
    endfor

    return s:p
endfunction

function! s:append_power(base, exponent)
    let s:p = s:power(a:base, a:exponent)
    execute ":normal a" . s:p
endfunction

command! -nargs=* Power call s:append_power(<f-args>)
