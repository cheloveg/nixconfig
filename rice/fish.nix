{ config, pkgs, ... }:

{
  programs.fish = {
  	enable = true;
  	loginShellInit = "starship init fish | source\nset fish_greeting \"\"";
  	interactiveShellInit = "starship init fish | source\nset fish_greeting \"\"";
  };
}
