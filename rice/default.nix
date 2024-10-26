{ config, pkgs, ... }:

{
  imports = [
  	./hyprland.nix
  	./wofi.nix
  	./foot.nix
  	./waybar.nix
  	./starship.nix
  	./fish.nix
  	./swaync.nix
  	./micro.nix
  	./hyprpaper.nix
  	./geany.nix
  ];
}
