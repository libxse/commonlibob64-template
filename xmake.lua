-- include subprojects
includes("lib/commonlibob64")

-- set project constants
set_project("commonlibob64-template")
set_version("0.0.0")
set_license("GPL-3.0")
set_languages("c++23")
set_warnings("allextra")

-- add common rules
add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

-- define targets
target("commonlibob64-template")
    add_rules("commonlibob64.plugin", {
        name = "commonlibob64-template",
        author = "libxse",
        description = "OBSE64 plugin template using CommonLibOB64"
    })

    -- add src files
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src")
    set_pcxxheader("src/pch.h")
