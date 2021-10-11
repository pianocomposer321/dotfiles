-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/composer3/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/composer3/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/composer3/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/composer3/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/composer3/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { "\27LJ\1\2\v\0\0\1\0\0\0\1G\0\1\0\0" },
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/FTerm.nvim"
  },
  ["asyncrun.vim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/asyncrun.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["consolation.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/consolation.nvim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/fzf-lua"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-fzf"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-fzf"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tmux-navigation"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-tmux-navigation"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\fonedark\frequire\0" },
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["rg.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/rg.nvim"
  },
  ["surround.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/surround.nvim"
  },
  ["tabby.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/tabby.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-terminal-help"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/vim-terminal-help"
  },
  ["yabs.nvim"] = {
    loaded = true,
    path = "/home/composer3/.local/share/nvim/site/pack/packer/start/yabs.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\1\2\v\0\0\1\0\0\0\1G\0\1\0\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
