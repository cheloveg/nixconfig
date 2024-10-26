{ config, pkgs, ... }:

{
  programs.starship = {
  	enable = true;
  	enableFishIntegration = true;

  	settings = {
  	  "$schema" = "https://starship.rs/config-schema.json";

  	  add_newline = true;

      # format = "^";
  	  # format = "[](#9A348E)[](bg:#DA627D fg:#9A348E)[](fg:#DA627D bg:#FCA17D)[](fg:#FCA17D bg:#86BBD8)[](fg:#86BBD8 bg:#06969A)[](fg:#06969A bg:#33658A)[](fg:#33658A)  ";
  	  format = "[](#9A348E)$username[](bg:#DA627D fg:#9A348E)$directory[](fg:#DA627D bg:#FCA17D)$git_branch$git_status[](fg:#FCA17D bg:#86BBD8)$python\${custom.power_mode}[](fg:#86BBD8 bg:#06969A)$cmd_duration$character[](fg:#06969A bg:#33658A)$time[](fg:#33658A)$line_break  ";

  	  character = {
  	  	success_symbol = "[](bold green bg:#06969A)";
  	  	error_symbol = "[✗ ](bold red bg:#06969A)";
  	  	format = "$symbol";
  	  };

  	  username = {
  	  	show_always = true;
  	  	style_user = "bg:#9A348E";
  	  	style_root = "bg:#9A348E";
  	  	format = "[ $user ]($style)";
  	  };

  	  directory = {
  	  	disabled = false;
  	  	style = "bg:#DA627D";
  	  	format = "[ $path ]($style)";
  	  	truncation_length = 8;
  	  	truncation_symbol = "…/";
  	  };

  	  git_branch = {
  	  	disabled = false;
  	  	symbol = "";
  	  	style = "bg:#FCA17D";
  	  	format = "[ $symbol $branch ]($style)";
  	  };

  	  git_status = {
  	  	disabled = false;
  	  	style = "bg:#FCA17D";
  	  	format = "[$all_status$ahead_behind ]($style)";
  	  };

  	  time = {
  	  	disabled = false;
  	  	time_format = "%R"; # Hour:Minute Format
  	  	style = "bg:#33658A";
  	  	format = "[ $time ]($style)";
  	  };

  	  python = {
  	  	disabled = false;
  	  	style = "bg:#86BBD8";
  	  	format = "[ via \${symbol}\${pyenv_prefix}(\${version} )(\($virtualenv\) )]($style)";
  	  };

  	  cmd_duration = {
  	  	disabled = false;
  	  	min_time = 0;
  	  	style = "bg:#06969A";
  	  	format = "[ took $duration ]($style)";
  	  };

   	  line_break = {
   	  	disable = false;
   	  };

   	  custom.power_mode = {
   	  	disabled = false;
   	  	command = "cat /sys/devices/system/cpu/cpu0/cpufreq/energy_performance_preference";
  	  	style = "bg:#86BBD8";
   	  	when = "true";
   	  	symbol = " ";
   	  };
  	};
  };
}
