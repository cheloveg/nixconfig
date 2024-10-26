{ config, pkgs, ... }:

{
  programs.waybar = {
  	enable = true;

  	settings = {
  	  mainBar = {
  	  	height = 20;
  	  	spacing = 4;

  	  	"modules-left" = ["hyprland/workspaces"];
  	  	"modules-center" = ["clock"];
  	  	"modules-right" = ["custom/notification" "custom/power" "battery" "pulseaudio" "network" "tray"];

  	  	tray = {
  	  	  "icon-size" = 21;
  	  	  spacing = 10;
  	  	};

  	  	clock = {
  	  	  "tooltip-format" = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
  	  	  "format-alt" = "{:%Y-%m-%d}";
  	  	};
  	  	battery = {
  	  	  "states" = {
  	  	  	"warning" = 30;
  	  	  	"critical" = 15;
  	  	  };
  	  	  "interval" = 10;
  	  	};
  	  	"custom/notification" = {
  	  	  "tooltip" = false;
  	  	  "format" = "{icon}";
          "format-icons" = {
  	  		"notification" = "<span foreground='red'><sup></sup></span> ";
  	  		"none" = " ";
  	  		"dnd-notification" = "<span foreground='red'><sup></sup></span> ";
  	  		"dnd-none" = " ";
  	  		"inhibited-notification" = "<span foreground='red'><sup></sup></span> ";
  	  		"inhibited-none" = " ";
  	  		"dnd-inhibited-notification" = "<span foreground='red'><sup></sup></span> ";
  	  		"dnd-inhibited-none" = " ";
          };
          "return-type" = "json";
          "exec-if" = "which swaync-client";
          "exec" = "swaync-client -swb";
          "on-click" = "swaync-client -t -sw";
          "on-click-right" = "swaync-client -d -sw";
          "escape" = true;
  	  	};
  	  };
  	};

  	style = ''
      @define-color base   #1e1e2e;
      @define-color mantle #181825;
      @define-color crust  #11111b;
      
      @define-color text     #cdd6f4;
      @define-color subtext0 #a6adc8;
      @define-color subtext1 #bac2de;
      
      @define-color surface0 #313244;
      @define-color surface1 #45475a;
      @define-color surface2 #585b70;
      
      @define-color overlay0 #6c7086;
      @define-color overlay1 #7f849c;
      @define-color overlay2 #9399b2;
      
      @define-color blue      #89b4fa;
      @define-color lavender  #b4befe;
      @define-color sapphire  #74c7ec;
      @define-color sky       #89dceb;
      @define-color teal      #94e2d5;
      @define-color green     #a6e3a1;
      @define-color yellow    #f9e2af;
      @define-color peach     #fab387;
      @define-color maroon    #eba0ac;
      @define-color red       #f38ba8;
      @define-color mauve     #cba6f7;
      @define-color pink      #f5c2e7;
      @define-color flamingo  #f2cdcd;
      @define-color rosewater #f5e0dc;

      * {
        font-family: "Ubuntu Nerd Font", SFPro, "Font Awesome 6 Free";
        font-size: 17px;
      }
      
      window#waybar {
        background-color: @crust;
        color: @text;
        transition-property: background-color;
        transition-duration: 0.5s;
        border-radius: 0px;
        transition-duration: .5s;
        margin: 16px 16px;
      }
      
      window#waybar.hidden {
        opacity: 0.2;
      }
      
      #workspaces button {
        color: @text;
        background: @background3;
        border-radius: 8px;
        padding: 0px 10px 0px 10px;
        margin: 7px 5px 10px 5px;
        border: 1px solid @border;
      }
      
      #workspaces button:hover {
        background: @surface0;
        color: @text;
      }
      
      #workspaces button.active {
        color: @crust;
        background: @overlay2;
        border: none; 
      }
      
      #custom-launcher,
      #clock,
      #battery,
      #cpu,
      #temperature,
      #backlight,
      #network,
      #pulseaudio,
      #memory,
      #custom-dunst,
      #custom-powermenu{
        padding: 0px 20px;
        margin: 7px 0px 10px 0px;
      	border-radius: 8px;
        color: @crust;
      }
      
      #window,
      
      #custom-launcher {
        padding: 0px 25px 0px 20px;
        margin: 7px 0px 10px 20px;
        background-color: @mauve;
      }
      
      #cpu {
        background-color: @lavender;
      }
      
      #temperature{
        background-color: @blue;
      }
      
      #memory {
        background-color: @sapphire;
      }
      
      #custom-dunst {
        padding: 0px 20px 0px 13px;
        background-color: @sky;
      }
      
      #pulseaudio {
        padding: 0px 20px 0px 17px;
        background-color: @teal;
      }
      
      #network {
        padding: 0px 15px 0px 20px;
        background-color: @green;
      }
      
      #battery {
        background-color: @yellow;
      }
      
      #clock {
        background-color: @peach;
      }
      
      #custom-powermenu {
        padding: 0px 25px 0px 20px;
        margin: 7px 20px 10px 0px;
        background-color: @maroon;
      }
      
      @keyframes blink {
        to {
          background-color: rgba(30, 34, 42, 0.5);
          color: #abb2bf;
        }
      }
      
      #battery.critical:not(.charging) {
        color: #f53c3c;
        animation-name: blink;
        animation-duration: 0.5s;
        animation-timing-function: linear;
        animation-iteration-count: infinite;
        animation-direction: alternate;
      }
      
      label:focus {
        background-color: #000000;
      }

      #custom-notification {
        padding-bottom: 1px;
        font-family: "NotoSansMono Nerd Font";
      }
  	'';
  };
}
