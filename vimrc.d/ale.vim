let g:ale_fix_on_save = 1
let g:ale_fixers = {
            \'c': ['clang-format'],
            \'rust': ['rustfmt'],
            \}
let g:ale_linters = {
            \'c': ['cppcheck', 'cpplint', 'clangtidy'],
            \'go': ['gometalinter'],
            \'python': ['flake8', 'pylint'],
            \'rust': ['rls'],
            \}
