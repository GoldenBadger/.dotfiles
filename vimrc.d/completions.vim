let g:python_support_python3_requirements = add(get(g:,'python_support_python3_requirements',[]),'jedi')

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
