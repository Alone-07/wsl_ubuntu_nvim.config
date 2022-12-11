local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true }

vim.g.mapleader = ' ' 

map('n', '<leader>b', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>k', ':NvimTreeOpen<CR>', opts)


-- For Tab ---note: it's not working
--map('n', '<leader>l', ':tabn<CR>', opts)
--map('n', '<leader>h', ':tabp<CR>', opts)
--map('n', '<C-t>', ':tabnew<CR>', opts)
--map('n', '<C-d>', ':tabc<CR>', opts)

--For window tab:- 

map('n', '<C-h>', "<C-w>h", opts) --for window focus right
map('n', '<C-l>', "<C-w>l", opts) --for window focus left
map('n', '<C-j>', "<C-w>j", opts) --for window focus bottom
map('n', '<C-k>', "<C-w>k", opts) --for window focus above


--For Telescope:-
map('n', '<C-t>', ':Telescope find_files<CR>', opts) -- open telescope to find file without opening preview 
map('n', '<C-g>', ':Telescope live_grep<CR>', opts) -- :w or updating 

-- For Esc:-
map('i', 'jj', "<Esc>", opts)

--for saving and quiting
map('n', '<leader>z', ':w<CR>', opts) -- :w or updating 
map('n', 'cz', ':q<CR>', opts)
map('n', 'zq', ':q!<CR>', opts) -- :q! or closing without saving anything
--map('n', 'zz', ':wq<CR>', opts) -- :wq or saving and closing anything

---- For Bar Bar ---------

-- Mo/e to previous/next
map('n', '<leader>h', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>l', '<Cmd>BufferNext<CR>', opts)
map('n', '<leader>d', '<Cmd>BufferClose<CR>', opts)

-- Re-order to previous/next
--map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
--map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
--map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
--map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
--map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
--map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
--map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
--map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
--map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
--map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
--map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
--map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
--map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
--map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
--map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
--map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
--map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
--map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
