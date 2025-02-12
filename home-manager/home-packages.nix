{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    android-studio
    baobab
    discord
    gnome-software
    imv
    mpv
    obs-studio
    obsidian
    sqlitestudio
    telegram-desktop
    xfce.thunar
    vesktop
    prismlauncher

    # CLI utils
    amneziawg-tools
    bottom
    btop
    brightnessctl
    cliphist
    drive
    dxvk
    ffmpeg
    ffmpegthumbnailer
    fish
    fzf
    fuzzel
    flatpak
    git
    gradle
    grimblast
    gamescope
    htop
    mediainfo
    microfetch
    mesa
    mesa-demos
    playerctl
    ripgrep
    silicon
    starship
    skypeforlinux
    trayer
    tmux
    ueberzugpp
    unzip
    udiskie
    udisks2
    vulkan-tools
    vkd3d
    w3m
    wget
    wl-clipboard
    wtype
    wezterm
    wallust
    winetricks
    xclip
    yazi
    yt-dlp
    zip

    # Drivers
    ntfs3g

    # Python
    python3
    python3Packages.pylint
    python3Packages.virtualenv
    python3Packages.numpy

    # CC
    gcc
  
    # language-servers
    pyright
    lua-language-server
    marksman

    # JavaScript
    nodejs

    #Lua
    luarocks-nix

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal
    xdg-desktop-portal-gtk

    # Other
    bemoji
    nix-prefetch-scripts
  ];

}
