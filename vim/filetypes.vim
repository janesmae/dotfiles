"" Custom file types configuration ""

autocmd BufNewFile,BufRead *.numi setlocal noet ts=4 sw=4 sts=4 filetype=markdown	" handle .numi files as markdown
autocmd BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2 sts=2	" use spaces in yaml files, tab size is 2 chars
autocmd BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2 sts=2		" use spaces in json files, tab size is 2 chars
autocmd BufNewFile,BufRead *.jade setlocal expandtab ts=2 sw=2 sts=2		" use spaces in jade files, tab size is 2 chars