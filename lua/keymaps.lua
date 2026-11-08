local map = vim.keymap.set

map({'i','n'},'<c-s>','<esc><cmd>w<cr>')
map('n','<c-n>','<cmd>bnext<cr>')
map('n','<c-d>','<cmd>bd<cr>')
map('n','<c-q>','<cmd>q<cr>')
map('n','<c-r>','<cmd>source %<cr>')
map('n','<leader>/','<cmd>nohls<cr>')
map('n','<leader>e' ,'<cmd>NvimTreeFocus<cr>')
