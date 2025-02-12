{
  programs.nixvim.plugins.oil = {
    enable = true;
    settings = {
      skip_confirm_for_simple_edits = true;

      keymaps = {
      "<C-l>" = false;
      "<C-r>" = "actions.refresh";
      "y." = "actions.copy_entry_path";
      };

      float = {  
        # Padding around the floating window  
        padding = 2; 
        max_width = 90;  
        max_height = 0;  
        border = "rounded";  
        win_options = {  
          winblend = 0;  
        };
      };
    };
  };
}
