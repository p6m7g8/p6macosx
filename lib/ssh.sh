######################################################################
#<
#
# Function: p6_macosx_ssh_do(host, [type=ssh], [aws_profile=])
#
#  Args:
#	host -
#	OPTIONAL type - [ssh]
#	OPTIONAL aws_profile - []
#
#>
######################################################################
p6_macosx_ssh_do() {
    local host="$1"
    local type="${2:-ssh}"
    local aws_profile="${3:-}"

    [ -n "$aws_profile" ] && eval "$aws_profile"

    local host_fg=$(p6_macosx_osa_fg_for_host "$host")
    local host_bg=$(p6_macosx_osa_bg_for_host "$host")
    local fg=$(p6_color_name_to_rgb "$host_fg")
    local bg=$(p6_color_name_to_rgb "$host_bg")

    local opacity=$(p6_color_opacity_factor "opacity")

    p6_macosx_osa_iterm_color "$host" "$fg" "$bg" "$opacity"

    case $type in
    ssh) p6_remote_ssh_do "$host" ;;
    public) p6_aws_ssh_connect_public "$host" ;;
    jump) p6_aws_ssh_connect_jump "$host" ;;
    private) p6_aws_ssh_connect_private "$host" ;;
    esac

    p6_macosx_osa_iterm_color_default
}