-- Allows the use of the debug/release mode
add_rules("mode.debug", "mode.release")

-- XMake comes with a package manager called xrepo (https://github.com/xmake-io/xmake-repo).
-- It allows you to download and use libraries easily.
-- Use `xrepo search <NAME>` to search for a package.
-- Downloads SFML using this xmake.lua: https://github.com/xmake-io/xmake-repo/blob/dev/packages/s/sfml/xmake.lua
-- All the modules are enabled by default. (graphics, window, system, audio, network)

-- Use `xrepo fetch --configs="shared=false,debug=false" "sfml 2.6.0"` to get the location of the package in your system.
add_requires("sfml 2.6.0", { configs = { shared = false, debug = false } })

-- Auto update the vsxmake when you build the project
add_rules("plugin.vsxmake.autoupdate")

-- You can have multiple targets in a single project.
target("SFML_GAME")
	set_kind("binary")
	set_languages("c++17") -- You can use "c++20" if you want
	
	add_packages("sfml")
	
	add_files("src/**.cpp")
	add_headerfiles("include/(**.h)")
	
	add_includedirs("include")

    -- Set and copy the assets folder
	set_configdir("$(buildir)/$(plat)/$(arch)/$(mode)")
	add_configfiles("(assets/**)", { onlycopy = true })
target_end()
-- Use: `xmake project -k vsxmake` to build Visual Studio solution '.sln'
-- Afterwards, you can use the '.sln' file to build the project in Visual Studio