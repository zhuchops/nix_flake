{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "QT_QPA_PLATFORMTHEME=flatpak"
        "GTK_USE_PORTAL=1"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = [
        "HDMI-A-1, highrr, 0x0, auto"
        "eDP-1, preferred, 1920x0, auto"
      ];

      "$mainMod" = "SUPER";
      "$terminal" = "wezterm";
      "$fileManager" = "$terminal -e sh -c 'yazi'";
      "$menu" = "fuzzel";

      exec-once = [
        "waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "udiskie &"
        "[silence] telegram-desktop"
        "[silence] discord"
        "[silence] zen"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 10;

        border_size = 3;

        "col.active_border" = "rgba(5f8787ff)";
        "col.inactive_border" = "rgba(3c3836ff)";

        resize_on_border = true;

        no_border_on_floating = true;

        layout = "dwindle";
      };

      decoration = {
        rounding = 10;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enabled = false;
        };

        blur = {
          enabled = false;
        };
      };

      animations = {
        enabled = true;
      };

      input = {
        kb_layout = "us,ru";
        kb_options = "grp:win_space_toggle";
        natural_scroll = false;
        accel_profile = "flat";
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = false;
        workspace_swipe_forever	= true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      windowrulev2 = [
        "bordersize 0, floating:0, onworkspace:w[t1]"

        "workspace 1,class:(vivaldi)"
        "workspace 3,class:(obsidian)"
        "workspace 3,class:(zathura)"
        "workspace 4,class:(com.obsproject.Studio)"
        "workspace 5,class:(org.telegram.desktop)"
        "workspace 5,class:(discord)"
        "workspace 6,class:(teams-for-linux)"

        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
        "size 950 600, floating:1, class:(org.wezfurlong.wezterm)"

        "opacity 0.0 override, class:^(xwaylandvideobridge)$"
        "noanim, class:^(xwaylandvideobridge)$"
        "noinitialfocus, class:^(xwaylandvideobridge)$"
        "maxsize 1 1, class:^(xwaylandvideobridge)$"
        "noblur, class:^(xwaylandvideobridge)$"
        "nofocus, class:^(xwaylandvideobridge)$"
      ];

      workspace = [
        "w[t1], gapsout:10, gapsin:0"
        "w[tv1], gapsout:10, gapsin:0"
        "f[1], gapsout:10, gapsin:0"
      ];

    };
    extraConfig = ''
      device {
        name = ugtablet-9-inch-pentablet
        output = HDMI-A-1
      }
    '';
  };
}
