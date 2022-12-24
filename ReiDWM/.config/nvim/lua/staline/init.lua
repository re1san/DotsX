local STYLE = 'minimal' -- fancy | minimal | monochrome
return {
  run = function()
    local mode = require("staline.modules.mode")
    local filename = require("staline.modules.filename")
    local branch = require("staline.modules.branch")
    local diff = require("staline.modules.diff")
    local folder = require("staline.modules.folder")
    local position = require("staline.modules.position")
    local diagnostics = require("staline.modules.diagnostics")
    local lsp = require("staline.modules.lsp")
    return table.concat {
      mode(STYLE),
      filename(),
      branch(),
      diff(STYLE),
      "%=",
      diagnostics(STYLE),
      folder(STYLE),
      lsp(STYLE) or "",
      position(STYLE),
    };
  end,
}
