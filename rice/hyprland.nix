{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
  	enable = true;
  	settings = {
		"$mod" = "SUPER";
		"$mainMod" = "SUPER";
		"$terminal" = "foot";
		"$fileManager" = "dolphin";
		"$menu" = "wofi --show drun";

		# debug.disable-logs = true;

		exec-once = [
			"waybar"
			"lxqt-policykit-agent"
			"swaync"
			"blueman-applet"
			"sleep 3 && hyprctl setcursor Breeze_Light 32"
		];

		env = [
		  "HYPRCURSOR_THEME,Breeze_Light"
		  "HYPRCURSOR_SIZE,32"
		  "XCURSOR_THEME,Breeze_Light"
		  "XCURSOR_SIZE,48"
		  "GDK_SCALE,2"
		  "QT_QPA_PLATFORM,wayland;xcb"
		  "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
		  "QT_QPA_PLATFORMTHEME,qt5ct"
		  "XDG_CURRENT_DESKTOP,Hyprland"
		  "XDG_SESSION_TYPE,wayland"
		  "XDG_SESSION_DESKTOP,Hyprland"
		  "NIXOS_OZONE_WL,1" # this is for Obsidian on Wayland
		];

  		monitor = [
  			",preferred,auto,auto"
  			"eDP-1,preferred,0x0,1.5"
  			"DP-1, 1920x1080@144, 1920x0, 1"
  			"HDMI-A-1, 1920x1080@60, 0x-1080, 1"
  		];
  		xwayland.force_zero_scaling = true;
  		
		input = {
		  kb_layout = "us,ru";
		  kb_options = "grp:alt_shift_toggle,caps:none,grp_led:caps";

		  follow_mouse = 1;
		  touchpad = {
		  	natural_scroll = "no";
		  	disable_while_typing = "false";
		  };
		  sensitivity = 0;
		};

		device = {
		  name = "pixart-lenovo-usb-optical-mouse";
		  sensitivity = -0.5;
		};

		general = {
		  gaps_in = 10;
		  gaps_out = 0;
		  border_size = 2;
		  "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
		  "col.inactive_border" = "rgba(595959aa)";
		  layout = "dwindle";
		};

  		decoration = {
  		  rounding = 10;

  		  blur = {
  		  	enabled = true;
  		  	size = 3;
  		  	passes = 1;
  		  };

  		  drop_shadow = "yes";
  		  shadow_range = 4;
  		  shadow_render_power = 3;
  		  "col.shadow" = "rgba(1a1a1aee)";
  		};

  		animations = {
  		  enabled = "yes";

  		  bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

  		  animation = [
  		  	"windows, 1, 7, myBezier"
  		  	"windowsOut, 1, 7, default, popin 80%"
  		  	"border, 1, 10, default"
  		  	"borderangle, 1, 8, default"
  		  	"fade, 1, 7, default"
  		  	"workspaces, 1, 6, default"
  		  ];
  		};

  		dwindle = {
  		  pseudotile = "yes";
  		  preserve_split = "yes";
  		  no_gaps_when_only = 1;
  		};

  		gestures = {
  		  workspace_swipe = "on";
  		  workspace_swipe_distance = 400;
  		  workspace_swipe_direction_lock = false;
  		};

  		bind = [
  		  "$mainMod, Return, exec, foot"
  		  "$mainMod, B, exec, wofi --show drun"
  		  "$mainMod, M, exit, "
  		  "$mainMod, E, exec, dolphin"
  		  "$mainMod SHIFT, Space, togglefloating, "
  		  # "$mainMod, P, pseudo," # dwindle stuff
  		  "$mainMod, J, togglesplit," # dwindle stuff

  		  "$mainMod, F, fullscreen, 0"
  		  "$mainMod SHIFT, F, fullscreen, 1"
  		  "$mainMod, T, togglesplit, 0"
  		  "$mainMod, P, exec, grim -g \"$(slurp)\", 0"
  		  "$mainMod SHIFT, P, exec, grim -g \"$(slurp -d)\" - | wl-copy"
  		  "$mainMod SHIFT, F, fakefullscreen"
  		  "$mainMod SHIFT, Q, killactive"
  		  "$mainMod,code:66,exec,dmenu"

  		  "$mainMod, left, movefocus, l"
  		  "$mainMod, right, movefocus, r"
  		  "$mainMod, up, movefocus, u"
  		  "$mainMod, down, movefocus, d"

  		  "$mainMod, 1, workspace, 1"
  		  "$mainMod, 2, workspace, 2"
  		  "$mainMod, 3, workspace, 3"
  		  "$mainMod, 4, workspace, 4"
  		  "$mainMod, 5, workspace, 5"
  		  "$mainMod, 6, workspace, 6"
  		  "$mainMod, 7, workspace, 7"
  		  "$mainMod, 8, workspace, 8"
  		  "$mainMod, 9, workspace, 9"
  		  "$mainMod, 0, workspace, 10"

  		  "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
		  "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
		  "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
		  "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
		  "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
		  "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
		  "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
		  "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
		  "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
		  "$mainMod SHIFT, 0, movetoworkspacesilent, 10"
  		];

  		bindm = [
  		  "$mainMod, mouse:272, movewindow"
  		  "$mainMod, mouse:273, resizewindow"	
  		];

  		windowrulev2 = [
  		  "move 0 0,title:^(flameshot)"
  		  # "nofullscreenrequest,title:^(flameshot)"
  		  "float,class:(firefox),title:()"
  		  "move 100%-361 51,class:(firefox),title:()"

  		  "float,class:(thunderbird)"
  		  "tile,class:(thunderbird),initialTitle:(Mozilla Thunderbird)"
  		];
  	};
	# extraConfig = "bind = $mod SHIFT, F, fullscreen, 0";
  };
}
