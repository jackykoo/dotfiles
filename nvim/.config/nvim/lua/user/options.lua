local options = {
    --updatetime = 300,                             -- faster completion (4000ms default)updatetime = 200,
    backspace = { 'indent', 'eol', 'start' },
    completeopt = { "menuone", "noselect" },      -- mostly just for cmp
    swapfile = false,
    number = true,
    -- cursorline = true,                            -- highlight the current line
    -- relativenumber = true,                        -- set relative numbered lines
    ruler = true,
    tabstop = 2,
    softtabstop = 2,
    shiftwidth = 2,
    title = true,
    expandtab = true,                             -- use spaces instead of tab
    mouse = 'a',
    splitbelow = true,                            -- force all horizontal splits to go below current window
    splitright = true,                            -- force all vertical splits to go to the right of current window
    cindent = true,
    cinoptions = { 'N-s' },
    wrap = false,                                 -- display lines as one long line
    -- termguicolors = true,                      -- set term gui colors (most terminals support this)
}
    
for k, v in pairs(options) do
    vim.opt[k] = v
end

local global_options = {
    netrw_banner = 0
}

for k, v in pairs(global_options) do
    vim.g[k] = v
end

vim.cmd [[set iskeyword+=-]]                      -- treat abc-abc as one word when using <dw>
