lua require("init")

nnoremap <Space><CR> <CMD>lua require("functions").run_python_file()<CR>
nnoremap - <CMD>Ex<CR>
nnoremap <C-l> <CMD>noh<CR>

function g:Run_python_file()
	let opts = {}

	function opts.on_exit(job_id, data, event)
		echom "Finished!"
	endf

	let file = expand("%")
	bot 10new
	call termopen("python3 " . file, opts)
endf

" colorscheme onedark
