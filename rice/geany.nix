{ config, pkgs, ... }:

{
  home.file.".config/geany/colorschemes/catppuccin-mocha.conf" = {
  	text = ''
  	#
  	#  catppuccin.conf
  	#
  	#  Copyright 2022 waxxx333 <waxxx@WindowsXP>
  	#  Reference the filetypes files before editing this config file.
  	#
  	[theme_info]
  	name=Catppuccin Mocha
  	description=Soothing pastel theme for the high-spirited!
  	version=0.2.5
  	author=Isabelinc
  	compat=1.22;1.23;1.23.1;1.24
  	
  	[named_colors]
  	rosewater=#f5e0dc
  	flamingo=#f2cdcd
  	pink=#f5c2e7
  	mauve=#cba6f7
  	red=#f38ba8
  	maroon=#eba0ac
  	peach=#fab387
  	yellow=#f9e2af
  	green=#a6e3a1
  	teal=#94e2d5
  	sky=#89dceb
  	sapphire=#74c7ec
  	blue=#89b4fa
  	lavender=#b4befe
  	text=#cdd6f4
  	subtext1=#bac2de
  	subtext0=#a6adc8
  	overlay2=#9399b2
  	overlay1=#7f849c
  	overlay0=#6c7086
  	surface2=#585b70
  	surface1=#45475a
  	surface0=#313244
  	base=#1e1e2e
  	mantle=#181825
  	crust=#11111b
  	
  	[named_styles]
  	operator=blue
  	default=subtext1;base;false;false
  	error=red;yellow;false;true
  	op=blue;base;true;false
  	# Editor UI
  	#  selection: words; background
  	selection=pink;blue;false;false
  	current_line=;surface0;true
  	brace_good=green;overlay1;true;true
  	brace_bad=red;overlay1;true;true
  	margin_line_number=text;base
  	margin_folding=text;surface0
  	fold_symbol_highlight=text
  	indent_guide=overlay1
  	caret=text;;false
  	marker_line=yellow;yellow
  	marker_search=mantle;blue
  	marker_mark=green;surface0
  	call_tips=overlay1;text;false;false
  	white_space=overlay1;;true
  	
  	# Basic langs
  	comment=overlay0
  	comment_doc=comment
  	comment_line=overlay0
  	comment_line_doc=comment_doc
  	comment_doc_keyword=comment,bold
  	comment_doc_keyword_error=comment,italic
  	
  	number=teal
  	number_1=number
  	number_2=number_1
  	
  	# class <color()>
  	type=pink;;flase;true;
  	
  	class=blue
  	# def <color():>
  	function=teal;;false;true;
  	parameter=peach
  	
  	
  	keyword=default
  	# def, for, in
  	keyword_1=red;;false;true
  	keyword_2=default
  	keyword_3=peach
  	keyword_4=keyword_2
  	
  	identifier=sky;;false;false
  	# main
  	identifier_1=subtext0;;false;false
  	identifier_2=default
  	identifier_3=identifier_2
  	identifier_4=identifier_2
  	
  	string=green;;false;false
  	string_1=peach;;false;false
  	string_2=green;;false;false
  	string_3=default
  	string_4=default
  	string_eol=string_1
  	character=string_1
  	backticks=string_2
  	here_doc=string_2
  	
  	scalar=string_2
  	label=red
  	preprocessor=green
  	regex=pink
  	operator=lavender;;true;false
  	decorator=string_1
  	other=default
  	extra=keyword;
  	
  	# Markup
  	tag=keyword
  	tag_unknown=tag,bold
  	tag_end=tag,bold
  	attribute=type
  	attribute_unknown=attribute,bold
  	value=number
  	entity=number
  	
  	# Diff
  	line_added=green
  	line_removed=red
  	line_changed=preprocessor
  	'';
  };
}
