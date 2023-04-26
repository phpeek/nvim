-- WSL hack for copying and pasting from system clipboard
-- more info :help clipboard-wsl
local wsl_clip = function()
  -- do not run when when not in WSL environment
  if vim.fn.has "wsl" == 1 then
    vim.g.clipboard = {
      name = 'WslClipboard',
      copy = {
        ['+'] = 'clip.exe',
        ['*'] = 'clip.exe',
      },
      paste = {
        ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      },
      cache_enabled = 0,
    }
  end
end

wsl_clip()
