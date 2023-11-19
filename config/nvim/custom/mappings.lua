local M = {}

M.crates = {
    n = {
        ["<leader>rcu"] = {
            function ()
                require('crates').upgrade_all_crates()
            end,
            "Upgrade all crates"
        }
    }
}

M.dap = {
    plugin = true,
    n = {
        ["<leader>db"] = {
            "<cmd> DapToggleBreakpoint <CR>",
            "Add breakpoint at line"
        },
        ["<leader>dr"] = {
            "<cmd> DapContinue <CR>",
            "Run or continue the debugger"
        },
    }
}

M.untree = {
    plugin = true,
    n = {
        ["<leader>u"] = {
            "<cmd> UndotreeToggle <CR>",
            "Toggle undo tree"
        }
    }
}

M.navigation = {
    v = {
        ["J"] = {
            ":m '>+1<CR>gv=gv",
            "Move lines up"
        },
        ["K"] = {
            ":m '<-2<CR>gv=gv",
            "Move lines down"
        }
    }
}

M.copy_paste = {
    n = {
        ["<leader>y"] = {
            "\"+y",
            "Copy to system clipboard"
        },
        -- ["<leader>Y"] = {
        --   "\"+Y",
        --   "Copy to system clipboard"
        -- }
        ["<leader>p"] = {
            "\"+p",
            "Paste from system clipboard"
        },
    },

    v = {
        ["<leader>y"] = {
            "\"+y",
            "Copy to global clipboard"
        },
        ["<leader>p"] = {
            "\"+p",
            "Paste from system clipboard"
        },

    }
}

M.git = {
  n = {
    ["<leader>gs"] = {
      "<cmd> Git <CR>",
      "Open git status"
    }
  }
}

-- M.general = {
--   n = {
--     ["<C-f>"] = {
--       "<cmd>silent !tmux neww tmux-sessionizer<CR>",
--       "Open another project in a tmux session"
--     }
--   }
-- }

M.harpoon = {
    n = {
        ["<leader>mh"] = {
            "<cmd>lua require('harpoon.mark').add_file() <CR>",
            "Add file to harpoon"
        },
        ["<leader>mo"] = {
            "<cmd>lua require('harpoon.ui').toggle_quick_menu() <CR>",
            "Toggle harpoon quick menu"
        },
        ["<leader>1"] = {
            "<cmd>lua require('harpoon.ui').nav_file(1) <CR>",
            "Navigate to file 1 in harpoon"
        },
        ["<leader>2"] = {
            "<cmd>lua require('harpoon.ui').nav_file(2) <CR>",
            "Navigate to file 2 in harpoon"
        },
        ["<leader>3"] = {
            "<cmd>lua require('harpoon.ui').nav_file(3) <CR>",
            "Navigate to file 3 in harpoon"
        },
        ["<leader>4"] = {
            "<cmd>lua require('harpoon.ui').nav_file(4) <CR>",
            "Navigate to file 4 in harpoon"
        },
        ["<leader>5"] = {
            "<cmd>lua require('harpoon.ui').nav_file(5) <CR>",
            "Navigate to file 5 in harpoon"
        },
    }
}

M.rest = {
    n = {
        ["<leader>rr"] = {
            "<Plug>RestNvim",
            "Run the request under the cursor"
        },
        ["<leader>rp"] = {
            "<Plug>RestNvimPreview",
            "Preview the request under the cursor"
        },
        ["<leader>rl"] = {
            "<Plug>RestNvimLast",
            "Re-run the last request"
        },
    }
}

M.diffview = {
    n = {
        ["<leader>do"] = {
            "<cmd>DiffviewOpen<CR>",
            "Open git diff view"
        },
        ["<leader>dc"] = {
            "<cmd>DiffviewClose<CR>",
            "Close git diff view"
        },
        ["<leader>dx"] = {
            "<cmd>DiffviewRefresh<CR>",
            "Refresh git diff view"
        }
    }
}

M.flash = {
    n = {
        ["<leader>jt"] = {
            "<cmd>lua require('flash').treesitter() <CR>",
            "Select treesitter node"
        },
        ["<leader>jw"] = {
            "<cmd>lua require('flash').jump() <CR>",
            "Jump to word"
        }
    }
}

return M
