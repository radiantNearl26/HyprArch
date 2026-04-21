local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {

    -- [[██╗   ██╗██╗   ██╗██╗  ██╗██╗███╗   ██╗ ██████╗       ███████╗ █████╗ ███╗   ██╗]],
    -- [[╚██╗ ██╔╝██║   ██║██║ ██╔╝██║████╗  ██║██╔═══██╗      ██╔════╝██╔══██╗████╗  ██║]],
    -- [[ ╚████╔╝ ██║   ██║█████╔╝ ██║██╔██╗ ██║██║   ██║█████╗███████╗███████║██╔██╗ ██║]],
    -- [[  ╚██╔╝  ██║   ██║██╔═██╗ ██║██║╚██╗██║██║   ██║╚════╝╚════██║██╔══██║██║╚██╗██║]],
    -- [[   ██║   ╚██████╔╝██║  ██╗██║██║ ╚████║╚██████╔╝      ███████║██║  ██║██║ ╚████║]],
    -- [[   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝       ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝]],

    [[                                            ]],
    [[                                            ]],
    [[  ███╗   ██╗███████╗ █████╗ ██████╗ ██╗     ]],
    [[  ████╗  ██║██╔════╝██╔══██╗██╔══██╗██║     ]],
    [[  ██╔██╗ ██║█████╗  ███████║██████╔╝██║     ]],
    [[  ██║╚██╗██║██╔══╝  ██╔══██║██╔══██╗██║     ]],
    [[  ██║ ╚████║███████╗██║  ██║██║  ██║███████╗]],
    [[  ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝]],

}

dashboard.section.buttons.val = {
    dashboard.button(":nf", "  New file", "<cmd>ene <CR>"),
    dashboard.button(":ff", "󰈞  Find file", ":Neotree<CR>"),
    dashboard.button(":to", "󰊄  Recently opened files"),
    dashboard.button(":bm", "  Jump to bookmarks"),
    dashboard.button(":tl", "  Open Telescope", ":Telescope<CR>"),
    dashboard.button(":q", "  Bye Neovim", ":qa<CR>"),
}

local function footer()
    return "\n\nDying for the right cause is the most human thing one can do."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
