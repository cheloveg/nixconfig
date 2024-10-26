
{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "cheloveg";
  home.homeDirectory = "/home/cheloveg";
  nixpkgs.config.allowUnfree = true;

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.
  # The home.packages option allows you to install Nix packages into your
  # environment.
  
  home.packages = [
	pkgs.hyprland
	pkgs.hyprpicker
	pkgs.hyprcursor
	pkgs.mpvpaper
	pkgs.catppuccin-cursors.mochaDark
	pkgs.wofi
	pkgs.ubuntu_font_family
	pkgs.gnome.adwaita-icon-theme
	pkgs.gnome.gnome-themes-extra
	pkgs.nerdfonts
	pkgs.neofetch
	pkgs.waybar
	pkgs.starship
	pkgs.gnome.quadrapassel
	pkgs.obsidian
	pkgs.wl-clipboard
	pkgs.swaylock
	pkgs.darktable
	pkgs.gimp
	pkgs.qpdfview
	
	pkgs.git
	pkgs.pass
	pkgs.gnupg

	pkgs.inetutils
	pkgs.tcpdump

	pkgs.yt-dlp

	pkgs.libreoffice
	pkgs.ktorrent

	pkgs.jetbrains.pycharm-community
	pkgs.sqlitebrowser
	pkgs.geany

	# pkgs.postgresql

	pkgs.gcc
	pkgs.gdb
	pkgs.vesktop

	pkgs.jd-gui
	pkgs.logisim-evolution
	pkgs.verilog
	pkgs.gtkwave

	pkgs.firefox
	pkgs.htop
	pkgs.batmon

	pkgs.telegram-desktop
	pkgs.nekoray

	pkgs.vim
	pkgs.vlc
	pkgs.nodejs

	pkgs.prismlauncher

	pkgs.grim
	pkgs.slurp
	pkgs.brightnessctl
	pkgs.networkmanagerapplet
	pkgs.hyprpaper

	pkgs.thunderbird

	pkgs.obs-studio
	pkgs.pavucontrol
	pkgs.paprefs

	pkgs.usbutils

	pkgs.bat
	pkgs.killall
	pkgs.file
	pkgs.unzip
	pkgs.zip
	pkgs.sharutils
	pkgs.mdcat
	pkgs.inxi
	
	pkgs.kdePackages.dolphin
	pkgs.kdePackages.breeze
	pkgs.libsForQt5.qt5ct
	pkgs.catppuccin-qt5ct
	pkgs.xdg-desktop-portal-hyprland
	pkgs.kdePackages.xdg-desktop-portal-kde
	pkgs.gnome.dconf-editor

	pkgs.zulu17

	pkgs.openai-whisper

	pkgs.ffmpeg

	pkgs.go
	# pkgs.clang

	pkgs.hashcat
	pkgs.aircrack-ng
	pkgs.wireshark

	pkgs.tor-browser

	(pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      # select Python packages here
      pyserial
    ]))
	pkgs.arduino-ide
  ];

  services.swaync = {
  	enable = true;
  	settings = {
  		
  	};
  	style = ''
  	'';
  };

  services.syncthing = {
  	enable = true;
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/cheloveg/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "micro";
  };

  imports = [
  	./rice
  ];
}
