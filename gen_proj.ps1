$Generator = "Visual Studio 17 2022"
$EnabledProjects = "clang;clang-tools-extra"

cmake `
    -S "llvm" `
    -B "build" `
    -G "$Generator" `
    -D LLVM_ENABLE_PROJECTS="$EnabledProjects" `
    -D CMAKE_INSTALL_PREFIX="./install" `
    -D CMAKE_BUILD_TYPE=Release
