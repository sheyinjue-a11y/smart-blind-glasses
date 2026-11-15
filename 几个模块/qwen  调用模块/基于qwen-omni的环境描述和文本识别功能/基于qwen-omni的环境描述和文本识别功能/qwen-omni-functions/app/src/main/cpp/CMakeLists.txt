cmake_minimum_required(VERSION 3.18.1)
project("qwenomni")

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 导入cURL库（需提前编译Android版本）
set(CURL_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/src/main/cpp/curl/include)
set(CURL_LIB_DIR ${CMAKE_SOURCE_DIR}/src/main/cpp/curl/libs/${ANDROID_ABI})

# 导入cJSON库
set(CJSON_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/src/main/cpp/cjson/include)
set(CJSON_LIB_DIR ${CMAKE_SOURCE_DIR}/src/main/cpp/cjson/libs/${ANDROID_ABI})

# 配置头文件搜索路径
include_directories(
        ${CURL_INCLUDE_DIR}
        ${CJSON_INCLUDE_DIR}
)

# 添加源文件
add_library(
        qwenomni
        SHARED
        src/main/cpp/qwen_omni_wrapper.cpp
)

# 链接依赖库
find_library(
        log-lib
        log
)

target_link_libraries(
        qwenomni
        ${CURL_LIB_DIR}/libcurl.a
        ${CJSON_LIB_DIR}/libcjson.a
        ${log-lib}
        android
)