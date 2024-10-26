{ config, pkgs, ... }:

{
  services.hyprpaper = {
  	enable = true;

  	settings = {
  		ipc = true;
  		splash = true;
  		preload = [
  			"/home/cheloveg/Images/Backgrounds/catppuccin/triangle.png"
  		];

  		wallpaper = [
			",/home/cheloveg/Images/Backgrounds/catppuccin/triangle.png"
  		];
  	};
  };
}
