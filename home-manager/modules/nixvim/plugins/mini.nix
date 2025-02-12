{
  programs.nixvim.plugins.mini = {
    enable = true;
    modules = {

      comment = {
        mappings = {
          comment = "<leader>/";
          comment_line = "<leader>/";
          comment_visual = "<leader>/";
          textobject = "<leader>/";
        };
      };

      pairs = {};

      surround = {};

      bracketed = {};

      clue = {
        settings = {
          triggers = [
            # Leader triggers
            { mode = "n"; keys = "<Leader>"; }
            { mode = "x"; keys = "<Leader>"; }
            
            { mode = "n"; keys = "\\"; }

            # Built-in completion
            { mode = "i"; keys = "<C-x>"; }

            # `g` key
            { mode = "n"; keys = "g"; }
            { mode = "x"; keys = "g"; }

            # Marks
            { mode = "n"; keys = "'"; }
            { mode = "n"; keys = "`"; }
            { mode = "x"; keys = "'"; }
            { mode = "x"; keys = "`"; }

            # Registers
            { mode = "n"; keys = "\""; }
            { mode = "x"; keys = "\""; }
            { mode = "i"; keys = "<C-r>"; }
            { mode = "c"; keys = "<C-r>"; }

            # Window commands
            { mode = "n"; keys = "<C-w>"; }

            # `z` key
            { mode = "n"; keys = "z"; }
            { mode = "x"; keys = "z"; }
          ];

          clues = [
            { mode = "n"; keys = "<Leader>b"; desc = " Buffer"; }
            { mode = "n"; keys = "<Leader>f"; desc = " Find"; }
            { mode = "n"; keys = "<Leader>g"; desc = "󰊢 Git"; }
            { mode = "n"; keys = "<Leader>i"; desc = "󰏪 Insert"; }
            { mode = "n"; keys = "<Leader>l"; desc = "󰘦 LSP"; }
            { mode = "n"; keys = "<Leader>m"; desc = " Mini"; }
            { mode = "n"; keys = "<Leader>q"; desc = " NVim"; }
            { mode = "n"; keys = "<Leader>s"; desc = "󰆓 Session"; }
            { mode = "n"; keys = "<Leader>u"; desc = "󰔃 UI"; }
            { mode = "n"; keys = "<Leader>w"; desc = " Window"; }
            { __raw = "require('mini.clue').gen_clues.g()"; }
            { __raw = "require('mini.clue').gen_clues.builtin_completion()"; }
            { __raw = "require('mini.clue').gen_clues.marks()"; }
            { __raw = "require('mini.clue').gen_clues.registers()"; }
            { __raw = "require('mini.clue').gen_clues.windows()"; }
            { __raw = "require('mini.clue').gen_clues.z()"; }
          ];

          window = {
            delay = 300;
            config-border = "rounded";
          };
        };
      };
      indentscope = {};

      completion = {};
    };
  };
}
