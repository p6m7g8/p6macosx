p6df::modules::p6macosx::version() { echo "0.0.1" }
p6df::modules::p6macosx::deps()    { }
p6df::modules::p6macosx::external::brew() { }

p6df::modules::p6macosx::init() {

    . $P6_DFZ_DATA_DIR/p6m7g8/p6common/lib/io.sh
    . $P6_DFZ_DATA_DIR/p6m7g8/p6common/lib/file.sh
    . $P6_DFZ_DATA_DIR/p6m7g8/p6common/lib/color.sh
    . $P6_DFZ_DATA_DIR/p6m7g8/p6common/lib/remote.sh

    local dir=$P6_DFZ_DATA_DIR/p6m7g8/p6macosx

    local file
    for file in $dir/lib/*.sh; do
	 p6_file_load "$file"
    done
}
