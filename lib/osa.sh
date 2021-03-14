######################################################################
#<
#
# Function: p6_macosx_osa_iterm_color_default()
#
#>
######################################################################
p6_macosx_osa_iterm_color_default() {

    local black=$(p6_color_name_to_rgb "black")
    local white=$(p6_color_name_to_rgb "white")
    local opacity=$(p6_color_opacity_factor "opacity")

    p6_macosx_osa_iterm_color "localhost" "$white" "$black" "$opacity"
}

######################################################################
#<
#
# Function: p6_macosx_osa_iterm_color(host, fg, bg, alpha)
#
#  Args:
#	host -
#	fg -
#	bg -
#	alpha -
#
#>
######################################################################
p6_macosx_osa_iterm_color() {
    local host="$1"
    local fg="$2"
    local bg="$3"
    local alpha="$4"

    local fg_r=$(p6_color_hex_to_d16b "$fg" 'r')
    local fg_g=$(p6_color_hex_to_d16b "$fg" 'g')
    local fg_b=$(p6_color_hex_to_d16b "$fg" 'b')

    local bg_r=$(p6_color_hex_to_d16b "$bg" 'r')
    local bg_g=$(p6_color_hex_to_d16b "$bg" 'g')
    local bg_b=$(p6_color_hex_to_d16b "$bg" 'b')

    /usr/bin/osascript <<EOF
tell application "iTerm"
   tell current session of current window
      set name to "$host"
      set foreground color to {$fg_r, $fg_g, $fg_b, $alpha}
      set background color to {$bg_r, $bg_g, $bg_b, $alpha}
      set transparency to "$opacity"
   end tell
end tell
EOF
}

######################################################################
#<
#
# Function: p6_macosx_osa_bg_for_host(host)
#
#  Args:
#	host -
#
#>
######################################################################
p6_macosx_osa_bg_for_host() {
    local host="$1"

    p6_file_display $P6_DFZ_CONFIG_DIR/.hosts | awk -v k=$host 'tolower($1) ~ tolower(k) { print $2 }'
}

######################################################################
#<
#
# Function: p6_macosx_osa_fg_for_host(host)
#
#  Args:
#	host -
#
#>
######################################################################
p6_macosx_osa_fg_for_host() {
    local host="$1"

    p6_file_display $P6_DFZ_CONFIG_DIR/.hosts | awk -v k=$host 'tolower($1) ~ tolower(k) { print $3 }'
}
