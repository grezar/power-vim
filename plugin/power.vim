function! s:power(base, exponent)
    let l:p = 1

    for i in range(a:exponent)
        let l:p = l:p * a:base
    endfor

    return l:p
endfunction

function! s:append_power(base, exponent)
    let l:p = s:power(a:base, a:exponent)
    execute ":normal a" . l:p
endfunction

command! -nargs=* Power call s:append_power(<f-args>)
