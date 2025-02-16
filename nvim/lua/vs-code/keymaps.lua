local vscode = require("vscode")
local keymap = vim.keymap
local opts = { silent = true, noremap = true }

keymap.set("n", "gr", function()
  vscode.call("editor.action.goToReferences")
end, opts)

keymap.set("n", "gi", function()
  vscode.call("editor.action.goToImplementation")
end, opts)

-- undo redo like vscode.
keymap.set("n", "u", function()
  vscode.call("undo")
end, opts)

keymap.set("n", "U", function()
  vscode.call("redo")
end, opts)
