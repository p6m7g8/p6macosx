p6df::modules::p6macosx::version() { echo "0.0.1" }
p6df::modules::p6macosx::deps()    { }
p6df::modules::p6macosx::external::brew() { }

p6df::modules::p6macosx::init() {

    local dir=$P6_DFZ_DATA_PARENT/p6m7g8/p6macosx

    . $dir/lib/io.sh
    . $dir/lib/file.sh
    
    local file
    for file in $dir/lib/*.sh; do
        P6_DEBUG=1 p6_file_load "$file"
    done
}
