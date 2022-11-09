local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end


-- configure telescope
telescope.setup({})

telescope.load_extension("fzf")
telescope.load_extension("ui-select")
