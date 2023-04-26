local mason_ok, mason = pcall(require, 'mason')

if not mason_ok then
  vim.notify 'mason is not available'
  return
end

mason.setup()

