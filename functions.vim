command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_
	 	\ | diffthis | wincmd p | diffthis

command -nargs=? Help help <args> | only
command Cmake !mkdir -p build;cd build;cmake -DCMAKE_TYPE_BUILD=Debug ..;make
command -nargs=* Make make -C build <args>

function HeaderToggle() 
    let file_path = expand("%")
    let file_name = expand("%<")
    let extension = split(file_path, '\.')[-1] " '\.' is how you really split on dot
    let err_msg = "There is no file "

    if extension == "cpp" 
        let next_file = join([file_name, ".h"], "")

        if filereadable(next_file)
            :e %<.h
        else
            echo join([err_msg, next_file], "")
        endif
    elseif extension == "h"
        let next_file = join([file_name, ".cpp"], "")

        if filereadable(next_file)
            :e %<.cpp
        else
            echo join([err_msg, next_file], "")
        endif
    endif
endfunction

function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
   endif
endfunction
