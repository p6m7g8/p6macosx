######################################################################
#<
#
# Function: p6df::modules::p6macosx::version()
#
#>
######################################################################
p6df::modules::p6macosx::version() { echo "0.0.1" }

######################################################################
#<
#
# Function: p6df::modules::p6macosx::deps()
#
#>
######################################################################
p6df::modules::p6macosx::deps() {
    ModuleDeps=(
        p6m7g8/p6common
    )
}

######################################################################
#<
#
# Function: p6df::modules::p6macosx::external::brew()
#
#>
######################################################################
p6df::modules::p6macosx::external::brew() { }

######################################################################
#<
#
# Function: p6df::modules::p6macosx::init()
#
#>
######################################################################
p6df::modules::p6macosx::init() {

    local dir=$P6_DFZ_SRC_DIR/p6m7g8/p6macosx
    p6_bootstrap "$dir"
}