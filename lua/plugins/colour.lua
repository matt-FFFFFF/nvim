-- Colorscheme loader.
--
-- If ~/.dotfiles/themes/ exists, each theme's neovim.lua is dofile()'d and
-- its specs are merged into the lazy plugin list. The active theme loads
-- eagerly; all others are installed but kept lazy (no config/opts applied).
--
-- If dotfiles are absent (e.g. on a minimal machine) a safe default is used.

local function current_theme()
  local f = io.open(vim.fn.expand("~/.config/themes/current.name"), "r")
  if not f then return nil end
  local name = f:read("*l")
  f:close()
  return name and name ~= "" and name or nil
end

local theme = current_theme()
local dotfiles_themes = vim.fn.expand("~/.dotfiles/themes")
local specs = {}

if vim.fn.isdirectory(dotfiles_themes) == 1 then
  local theme_files = vim.fn.glob(dotfiles_themes .. "/*/neovim.lua", false, true)

  for _, path in ipairs(theme_files) do
    local theme_name = vim.fn.fnamemodify(path, ":h:t")
    local active = (theme_name == theme)

    local ok, result = pcall(dofile, path)
    if not ok then
      vim.notify("colour.lua: failed to load " .. path .. "\n" .. result, vim.log.levels.WARN)
    elseif type(result) == "table" then
      for _, spec in ipairs(result) do
        if spec[1] == "LazyVim/LazyVim" then
          -- Only the active theme sets the global colorscheme
          if active then
            table.insert(specs, spec)
          end
        else
          if not active then
            -- Install but do not source for inactive themes
            spec.lazy = true
            spec.config = nil
            spec.opts = nil
          end
          table.insert(specs, spec)
        end
      end
    end
  end
else
  -- Fallback: dotfiles not present, load a sensible default
  vim.notify("colour.lua: ~/.dotfiles/themes not found, using default colorscheme", vim.log.levels.INFO)
  table.insert(specs, { "olimorris/onedarkpro.nvim", priority = 1000, lazy = false })
  table.insert(specs, { "LazyVim/LazyVim", opts = { colorscheme = "onedark" } })
end

return specs
