" Markdown编写快捷键

" 快速添加锚点
autocmd Filetype markdown inoremap <buffer> <silent> ,, <++>
" 寻找下一个锚点
autocmd Filetype markdown inoremap <buffer> <silent> ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
" 寻找下一个锚点并删除锚点前的空格
autocmd Filetype markdown inoremap <buffer> <silent> ,s <Esc>/ <++><CR>:nohlsearch<CR>c5l
" 分割线
autocmd Filetype markdown inoremap <buffer> <silent> ,- ---<Enter><Enter>
" 加粗
autocmd Filetype markdown inoremap <buffer> <silent> ,b **** <++><Esc>F*hi
" 删除线
autocmd Filetype markdown inoremap <buffer> <silent> ,x ~~~~ <++><Esc>F~hi
" 斜体
autocmd Filetype markdown inoremap <buffer> <silent> ,p ** <++><Esc>F*i
" 行内代码
autocmd Filetype markdown inoremap <buffer> <silent> ,q `` <++><Esc>F`i
" 代码块
autocmd Filetype markdown inoremap <buffer> <silent> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
" todo
autocmd Filetype markdown inoremap <buffer> <silent> ,g - [ ] <Enter><++><ESC>kA
" 下划线
autocmd Filetype markdown inoremap <buffer> <silent> ,u <u></u><++><Esc>F/hi
" 图片
autocmd Filetype markdown inoremap <buffer> <silent> ,p ![](<++>) <++><Esc>F[a
" 链接
autocmd Filetype markdown inoremap <buffer> <silent> ,a [](<++>) <++><Esc>F[a
" 一号标题
autocmd Filetype markdown inoremap <buffer> <silent> ,1 #<Space><Enter><++><Esc>kA
" 二号标题
autocmd Filetype markdown inoremap <buffer> <silent> ,2 ##<Space><Enter><++><Esc>kA
" 三号标题
autocmd Filetype markdown inoremap <buffer> <silent> ,3 ###<Space><Enter><++><Esc>kA
" 四号标题
autocmd Filetype markdown inoremap <buffer> <silent> ,4 ####<Space><Enter><++><Esc>kA
" 插入当前时间
autocmd Filetype markdown inoremap <buffer> <silent> ,t <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>


"  格式快捷键
"  添加notice
"  suceeess
autocmd Filetype markdown inoremap <buffer> <silent> ,ns <div class="notices success"><Enter><Enter></div><Enter><++><Esc>2kI
autocmd Filetype markdown inoremap <buffer> <silent> ,ni <div class="notices info"><Enter><Enter></div><Enter><++><Esc>2kI
autocmd Filetype markdown inoremap <buffer> <silent> ,nw <div class="notices warning"><Enter><Enter></div><Enter><++><Esc>2kI
autocmd Filetype markdown inoremap <buffer> <silent> ,ne <div class="notices error"><Enter><Enter></div><Enter><++><Esc>2kI

" 添加alert
autocmd Filetype markdown inoremap <buffer> <silent> ,aw <div class="alert alert-warning" role="alert"><Enter><Enter></div><Enter><++><Esc>2kI
autocmd Filetype markdown inoremap <buffer> <silent> ,ai <div class="alert alert-info" role="alert"><Enter><Enter></div><Enter><++><Esc>2kI
autocmd Filetype markdown inoremap <buffer> <silent> ,as <div class="alert alert-success" role="alert"><Enter><Enter></div><Enter><++><Esc>2kI
autocmd Filetype markdown inoremap <buffer> <silent> ,ae <div class="alert alert-error" role="alert"><Enter><Enter></div><Enter><++><Esc>2kI
