
--vim.api.nvim_create

-- autocmd: first argument is an event - '':help event' for all avail events
-- second aegument is the command to execute
-- vim.api.nvim_create_autocmd("BufEnter", {command = "echo 'hello'"})
-- you can check all the attached commands to the BufEnter event with ':au BufEnter'
-- calling nvim_create_autocmd multiple times will create muitiple callbacks to the Bufenv
-- Therefore we need to create an au group.

-- local group = vim.api.nvim_create_augroup("AGroupName", {clear = true}) -- clear to avoid adding callbacks to BufEvent

--vim.api.nvim_create_autocmd("BufEnter", {command = "echo 'hello'", group = group})

-- Options exists. can call echo hello only for the current buffer
--vim.api.nvim_create_autocmd("BufEnter", {command = "echo 'hello, buffer 12'", group = group, buffer = 0})
-- to see all options :h nvim_create_autocmd()
-- 
