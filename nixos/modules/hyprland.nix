{
  programs.hyprland = {
    enable = true;
    withUWSM = false;
  };

  security.pam.services.hyprlock = {};
}
