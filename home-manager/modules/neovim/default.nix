{pkgs, lib, ...}:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    # extraLuaConfig = lib.fileContents ./init.lua;
    extraPackages = with pkgs; [
      pyright
      lua-language-server
      rust-analyzer
      marksman
      nil
    ];
  };

  xdg.configFile.nvim.source = ./.;
  home.sessionVariables = {
      XDG_STATE_HOME = "$HOME/.local/state";
  };
}
