{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./options.nix
    ./plugins
    ./keymappings.nix
    ./completion.nix
  ];

  programs.nixvim = {
    enable = true;
  };
}
