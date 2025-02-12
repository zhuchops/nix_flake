{ pkgs, ... }:

{
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-wlr
      xdg-desktop-portal-kde
    ];

    config = {
      common = {
        default = [
        ];  
      };
      hyprland = {
        default = [
        ];  
      };
    };
  };
}
