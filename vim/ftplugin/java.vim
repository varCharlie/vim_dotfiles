setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

" ========= vimux-bazel-test ========
map <silent> <LocalLeader>ra :wa<CR> :RunAllBazelTests<CR>
map <silent> <LocalLeader>rb :wa<CR> :RunTargetBazelTests<CR>

" ========= Eclim Shortcuts ========

" View docs for expression under cursor
nnoremap <silent> <LocalLeader>jd :JavaDocPreview<CR>

" Organize imports for current file--adds and removes with selection as needed
nnoremap <silent> <LocalLeader>ji :JavaImportOrganize<CR>

" View Eclipse's suggestion for fixing an issue (like IntelliJ's alt+enter)
nnoremap <silent> <LocalLeader>jj :JavaCorrect<CR>

" Rename an expression across projects
nnoremap <LocalLeader>jr :JavaRename<space>

" Move a top level class or interface from one package to another
nnoremap <LocalLeader>jm :JavaMove<space>

" Jump to definition of term under cursor
nnoremap <silent> <LocalLeader>js :JavaSearch<CR>
nnoremap <silent> <C-]> :JavaSearch<CR>

" Reformat whole file or a visual selection
nnoremap <LocalLeader>jf :%JavaFormat<CR>
vnoremap <LocalLeader>jf :JavaFormat<CR>

" Use <tab> to invoke Eclipse autocomplete suggestions (via SuperTab plugin)
let b:SuperTabDefaultCompletionType = "<C-X><C-U>"
let g:EclimJavaCompleteCaseSensitive = 1

" to add
" - attr getter generation `\jgg`
" - attr setter generation `\jgs`
" - constructor method generation `\jgc` (selection-aware)
" - test running (vimux bazel runner)
"   - check out `--test_filter` option to `bazel test` (update: might not work)
"   - something like `bazel test persisters:test --test-arg=--junit..?`
" - checkstyle
" - findbugs
"
" to keep in VNC
" - debugging
" - decompiled code browsing???
