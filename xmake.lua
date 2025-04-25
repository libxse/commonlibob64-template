-- set minimum xmake version
set_xmakever("2.8.2")

-- includes
includes("lib/commonlibob64")

-- set project
set_project("commonlibob64-template")
set_version("0.0.0")
set_license("GPL-3.0")

-- set defaults
set_languages("c++23")
set_warnings("allextra")

-- set policies
set_policy("package.requires_lock", true)

-- add rules
add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

-- targets
target("commonlibob64-template")
    -- add dependencies to target
    add_deps("commonlibob64")

    -- add commonlibsse plugin
    add_rules("commonlibob64.plugin", {
        name = "commonlibob64-template",
        author = "qudix",
        description = "OBSE plugin template using CommonLibOB64"
    })

    -- add src files
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src")
    set_pcxxheader("src/pch.h")
