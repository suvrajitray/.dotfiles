local vscode = require("vscode")
local cursors = require("vscode-multi-cursor")
local keymap = vim.keymap
local opts = { silent = true, noremap = true }

keymap.set("n", "gr", function()
  vscode.call("editor.action.goToReferences")
end, opts)

keymap.set("n", "gi", function()
  vscode.call("editor.action.goToImplementation")
end, opts)

-- undo like vscode.
-- keymap.set("n", "u", function()
--   vscode.call("undo")
-- end, opts)

-- redo like vscode.
-- keymap.set("n", "U", function()
--   vscode.call("redo")
-- end, opts)

keymap.set("n", "U", "<C-r>")

keymap.set({ "n", "x", "i" }, "<C-d>", function()
  cursors.addSelectionToNextFindMatch()
end, opts)

keymap.set("n", "<C-d>", "mciw*:nohl<cr>", {
  remap = true,
})

keymap.set({ "n", "x", "i" }, "<CS-d>", function()
  cursors.addSelectionToPreviousFindMatch()
end, opts)

keymap.set({ "n", "x", "i" }, "<CS-l>", function()
  cursors.selectHighlights()
end, opts)
