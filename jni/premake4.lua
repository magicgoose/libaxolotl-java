#!lua
solution "libaxolotl"
    configurations { "Debug", "Release" }
    project "libaxolotl-cli"
        kind "ConsoleApp"
        language "C"
        files { "**.h", "**.c" }
        excludes { "curve25519-jni.c"}
        configuration "Debug"
            defines { "DEBUG" }
            flags { "Symbols" }

        configuration "Release"
            defines { "NDEBUG" }
            flags { "Optimize" }