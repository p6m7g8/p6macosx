p6_macosx_ssh_do() {
    local host="$1"
    local type="${2:-ssh}"
    local aws_profile="${3:-$AWS_DEFAULT_PROFILE}"

    [ -n "$aws_profile" ] && eval "$aws_profile"

    local host_fg=$(p6_macosx_osa_fg_for_host "$host")
    local host_bg=$(p6_macosx_osa_bg_for_host "$host")
    local fg=$(p6_color_name_to_rgb "$host_fg")
    local bg=$(p6_color_name_to_rgb "$host_bg")

    local opacity=$(p6_color_opacity_factor "opacity")

    p6_macosx_osa_iterm_color "$host" "$fg" "$bg" "$opacity"

    if [ x"$type" = x"ssh" ]; then
	p6_remote_ssh_do "$host"
    else
	p6_aws_ssh_svc_do "$host" "$type"
    fi

    p6_macosx_osa_iterm_color_default
}
