name = "Seeds Productivity"
description = "Set birdcage seeds productivity to number of times"
author = "xpolife"

version = "1.0"

forumthread = ""

api_version = 6

icon_atlas = "seeds.xml"
icon = "seeds.tex"

dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true
dst_compatible = false

configuration_options =
{
	{
		name = "PRODUCTIVITY",
		label = "rate",
		options = {
			{description = "1x (original)", data = 1},
			{description = "2x", data = 2},
			{description = "3x", data = 3},
			{description = "4x", data = 4},
			{description = "5x", data = 5},
		},
		default = 2,
	}
}
