set(TARGET_NAME mirror)

file(GLOB_RECURSE SOURCE_FILES
    ${CMAKE_CURRENT_LIST_DIR}/src/*.cpp
    ${CMAKE_CURRENT_LIST_DIR}/src/*.hpp
)

add_clang_executable(${TARGET_NAME}
  ${SOURCE_FILES}
)

set(LLVM_LINK_COMPONENTS
  Support
  )

set(CLANG_LINK_COMPONENTS
  clangAST
  clangBasic
  clangSema
  clangTooling
  )

target_link_libraries(${TARGET_NAME} PRIVATE
  ${LLVM_LINK_COMPONENTS}
  ${CLANG_LINK_COMPONENTS}
)
