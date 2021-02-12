project "Flatbuffers"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    defines
    {
    }

    includedirs
    {
        "include"
    }

	files
	{
        "src/idl_parser.cpp",
        "src/idl_gen_text.cpp",
        "src/reflection.cpp",
        "src/util.cpp"
    }
    
	filter "system:linux"
		pic "On"

		systemversion "latest"
		staticruntime "On"

		files
		{
        }

        defines
        {
        }

        buildoptions
        {
        }

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

		files
		{
		}

		defines 
		{
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
