local has_toggleterm, toggleterm = pcall(require, "toggleterm")
if not has_toggleterm then return end

toggleterm.setup {}
