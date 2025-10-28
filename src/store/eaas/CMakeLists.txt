
file(GLOB SourceFiles "${CMAKE_CURRENT_SOURCE_DIR}/*.cc" "${CMAKE_CURRENT_SOURCE_DIR}/../benchmark/async/bench_client.cc")

add_executable(eaas_client ${SourceFiles})
target_include_directories(eaas_client PUBLIC ${CMAKE_SOURCE_DIR} ${CMAKE_BINARY_DIR} "${CMAKE_CURRENT_SOURCE_DIR}/../benchmark/async/")
target_link_libraries(eaas_client BenchmarkCommon BenchmarkRetwis StoreStrong Common)
