######################################################################
#<
#
# Function: p6_macosx_ssh_do(host, [type=ssh], [pfunc=])
#
#  Args:
#	host -
#	OPTIONAL type - [ssh]
#	OPTIONAL pfunc - []
#
#>
######################################################################
p6_macosx_ssh_do() {
    local host="$1"
    local type="${2:-ssh}"
    local pfunc="$3{:-}"

    if ! p6_string_blank "$pfunc"; then
        p6_run_yield "$pfunc"
    fi

    local host_fg
    local host_bg
    local fg
    local bg
    local opacity

    host_fg=$(p6_macosx_osa_fg_for_host "$host")
    host_bg=$(p6_macosx_osa_bg_for_host "$host")
    fg=$(p6_color_name_to_rgb "$host_fg")
    bg=$(p6_color_name_to_rgb "$host_bg")
    opacity=$(p6_color_opacity_factor "opacity")

    p6_macosx_osa_iterm_color "$host" "$fg" "$bg" "$opacity"

    case $type in
    ssh) p6_remote_ssh_do "$host" ;;
    public) p6_aws_ssh_connect_public "$host" ;;
    jump) p6_aws_ssh_connect_jump "$host" ;;
    private) p6_aws_ssh_connect_private "$host" ;;
    esac

    p6_macosx_osa_iterm_color_default
}