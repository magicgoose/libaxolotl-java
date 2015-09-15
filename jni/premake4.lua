#!lua
solution "libaxolotl"
    configurations { "Release" }
    project "libaxolotl-cli"
        kind "ConsoleApp"
        language "C"
        files { "**.h", "**.c" }
        excludes { "curve25519-jni.c"}
        configuration "Release"
            defines { "NDEBUG" }
            flags { "Optimize" }