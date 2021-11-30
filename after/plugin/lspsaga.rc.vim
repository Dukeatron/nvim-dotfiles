if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF

local saga = require 'lspsaga'

saga.init_lsp_saga {

	error_sign = '∑',
	warn_sign = 'π',
	hint_sign = '†',
	infor_sign = 'ø',
	border_style = "round",
}
EOF

nnoremap <silent><leader>cd <cmd>lua<CR>
nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>


highlight link LspSagaFinderSelection Search

