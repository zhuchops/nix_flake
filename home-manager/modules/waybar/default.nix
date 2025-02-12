{ config, pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        height = 15;
        spacing = 0;
        modules-left = [ "hyprland/workspaces" "cava" ];
        modules-center = [ "hyprland/window" ];
        modules-right = [ "hyprland/language" "wireplumber" "bluetooth" "network" "battery" "clock" ];

        "hyprland/workspaces" = {
          all-outputs = true;
          warp-on-scroll = false;
          enable-bar-scroll = true;
          disable-scroll-wraparound = true;
          format = "{icon}";
        };

        "hyprland/window" = {
          icon = true;
          icon-size = 16;
          format = "{title}";
          max-length = 40;
          all-outputs = true;
        };


        "hyprland/language" = {
          format = "{short}";
          # format-ru = "ru";
          # format-en = "en";
        };

        cava = {
          framerate = 30;
          autosens = 1;
          bars = 14;
          lower_cutoff_freq = 50;
          higher_cutoff_freq = 10000;
          method = "pipewire";
          source = "auto";
          stereo = true;
          bar_delimiter = 0;
          noise_reduction = 0.77;
          input_delay = 2;
          hide_on_silence = true;
          format-icons = [ "▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
          actions = {
            "on-click-right" = "mode";
          };
        };

        network = {
          interval = 500;
          "format-wifi" = "{icon} {essid}";
          "format-ethernet" = "󰛳 {ipaddr}";
          "format-disconnected" = "󰤮 No Connection";
          "format-disabled" = "󰤮 Disabled";
          "format-icons" = [ "󰤟" "󰤢" "󰤥" "󰤨" ];
          tooltip = true;
          "tooltip-format" = "Network: {essid} \nLocal IP: {ipaddr} \nFrequency: {frequency}GHz \nUp: {bandwidthUpBytes} \nDown: {bandwidthDownBytes}";
          "tooltip-format-disabled" = "Network disabled\nClick to enable";
          "on-click" = "kitty --detach nmtui";
        };

        bluetooth = {
          "max-length" = 10;
          "format-off" = "󰂲 Off";
          "format-on" = "󰂯 On";
          "format-connected" = "󰂱 {device_alias}";
          "tooltip-format-off" = "Bluetooth is disabled\nRight click to toggle";
          "tooltip-format-on" = "Bluetooth is enabled\nNot connected\nClick to open tui";
          "on-click" = "kitty --detach bluetuith --no-warning";
        };

        mpris = {
          format = " {status_icon} {dynamic}";
          interval = 1;
          "dynamic-len" = 40;
          "status-icons" = {
            playing = "▶";
            paused = "⏸";
            stopped = "";
          };
          "dynamic-order" = [ "title" "artist" ];
          "ignored-players" = [ "firefox" ];
        };

        idle_inhibitor = {
          format = "{icon}";
          "format-icons" = {
            activated = "";
            deactivated = "";
          };
        };

        "hyprland/mode" = {
          format = "{}";
        };

        tray = {
          "icon-size" = 14;
          spacing = 10;
        };

        load = {
          format = " {}";
        };

        clock = {
          "tooltip-format" = "<tt><big>{calendar}</big></tt>";
          format = "{:%I:%M %p}";
          "format-alt" = "{:%m-%d-%Y}";
        };

        cpu = {
          format = "  {usage}% ";
          tooltip = true;
        };

        memory = {
          format = "{}% ";
        };

        temperature = {
          "critical-threshold" = 80;
          format = "{temperatureC}°C {icon}";
          "format-icons" = [ "" "" "" ];
        };

        backlight = {
          format = "{icon} {percent}%";
          "format-icons" = [ "" "" "" "" "" "" "" "" "" ];
        };

        battery = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          "format-full" = "{icon} {capacity}%";
          "format-charging" = "  {capacity}%";
          "format-plugged" = " {capacity}%";
          "format-alt" = "{icon} {time}";
          "format-icons" = [ "" "" "" "" "" ];
        };

        wireplumber = {
          "scroll-step" = 5;
          format = "{icon} {volume}%";
          "format-bluetooth" = "{icon} {volume}% ";
          "format-bluetooth-muted" = "{icon} ";
          "format-muted" = "";
          "format-icons" = {
            headphone = "";
            "hands-free" = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [ "" "" "" ];
          };
          "on-click" = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        };
      };
    };
  };
}
