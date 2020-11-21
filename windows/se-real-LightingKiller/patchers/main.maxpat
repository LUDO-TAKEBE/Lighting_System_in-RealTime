{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 265.0, 79.0, 372.0, 147.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.5, 153.0, 67.0, 22.0 ],
					"text" : "s loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 34.5, 118.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 20.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.5, 20.0, 121.0, 20.0 ],
					"text" : "double click to open!!",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 157.5, 88.0, 42.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 161.5, 86.553382999999997, 32.0, 22.0 ],
					"text" : "VAE",
					"varname" : "patcher"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 88.0, 87.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.5, 86.553382999999997, 77.0, 22.0 ],
					"text" : "main-system",
					"varname" : "main-system"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 216.5, 88.0, 117.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 218.5, 86.553382999999997, 104.0, 22.0 ],
					"text" : "make-VAEdataset",
					"varname" : "make_VAEdataset"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 0.3 ],
					"id" : "obj-4",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 140.0, 58.0, 204.0, 62.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 141.5, 59.053382999999997, 201.0, 62.0 ],
					"text" : "VAE for Lighting\n\n\n",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-123" : [ "live.numbox[14]", "live.numbox", 0 ],
			"obj-1::obj-144" : [ "live.tab[1]", "live.tab[1]", 0 ],
			"obj-1::obj-154" : [ "noise range", "noise", 0 ],
			"obj-1::obj-18" : [ "live.grid", "live.grid", 0 ],
			"obj-1::obj-2" : [ "live.text[3]", "live.text", 0 ],
			"obj-1::obj-25" : [ "live.menu[3]", "live.menu", 0 ],
			"obj-1::obj-63::obj-6" : [ "loadPath", "loadPath", 0 ],
			"obj-1::obj-65" : [ "live.numbox", "live.numbox", 0 ],
			"obj-1::obj-67" : [ "live.text", "live.text", 0 ],
			"obj-1::obj-68" : [ "live.text[1]", "live.text", 0 ],
			"obj-1::obj-69" : [ "live.tab", "live.tab", 0 ],
			"obj-1::obj-75" : [ "live.text[2]", "live.text", 0 ],
			"obj-1::obj-83" : [ "live.numbox[3]", "live.numbox", 0 ],
			"obj-1::obj-9" : [ "live.text[4]", "live.text", 0 ],
			"obj-33::obj-111" : [ "umenu", "umenu", 0 ],
			"obj-33::obj-124" : [ "slider[3]", "slider", 0 ],
			"obj-33::obj-13" : [ "slider[6]", "slider", 0 ],
			"obj-33::obj-144" : [ "slider[4]", "slider", 0 ],
			"obj-33::obj-167" : [ "moving", "moving", 0 ],
			"obj-33::obj-170" : [ "live.menu[5]", "live.menu", 0 ],
			"obj-33::obj-171::obj-9" : [ "strobe_speed", "speed", 0 ],
			"obj-33::obj-175" : [ "live.grid[3]", "live.grid", 0 ],
			"obj-33::obj-182" : [ "live.tab[2]", "live.tab", 0 ],
			"obj-33::obj-22" : [ "umenu[1]", "umenu", 0 ],
			"obj-33::obj-234::obj-111" : [ "umenu[3]", "umenu", 0 ],
			"obj-33::obj-234::obj-15" : [ "number[6]", "number[2]", 0 ],
			"obj-33::obj-234::obj-170" : [ "live.menu[7]", "live.menu", 0 ],
			"obj-33::obj-234::obj-182" : [ "live.tab[4]", "live.tab", 0 ],
			"obj-33::obj-234::obj-2" : [ "number[8]", "number[1]", 0 ],
			"obj-33::obj-234::obj-4" : [ "slider[9]", "slider", 0 ],
			"obj-33::obj-234::obj-41" : [ "number[5]", "number[2]", 0 ],
			"obj-33::obj-234::obj-42" : [ "live.grid[7]", "live.grid", 0 ],
			"obj-33::obj-234::obj-67" : [ "number[7]", "number", 0 ],
			"obj-33::obj-234::obj-7" : [ "slider[10]", "slider", 0 ],
			"obj-33::obj-5" : [ "slider[2]", "slider", 0 ],
			"obj-33::obj-57::obj-2" : [ "live.grid[5]", "live.grid", 0 ],
			"obj-33::obj-57::obj-234" : [ "live.grid[6]", "live.grid", 0 ],
			"obj-33::obj-57::obj-4" : [ "all-light", "all-light", 0 ],
			"obj-33::obj-67" : [ "number", "number", 0 ],
			"obj-33::obj-7" : [ "slider[1]", "slider", 0 ],
			"obj-33::obj-87" : [ "slider[5]", "slider", 0 ],
			"obj-42::obj-18" : [ "live.grid[1]", "live.grid", 0 ],
			"obj-42::obj-25" : [ "live.menu[4]", "live.menu", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-33::obj-234::obj-170" : 				{
					"parameter_longname" : "live.menu[7]"
				}
,
				"obj-33::obj-234::obj-182" : 				{
					"parameter_longname" : "live.tab[4]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "make-VAEdataset.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make-data.js",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/node_content",
				"patcherrelativepath" : "../node_content",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "main-system.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "red_button.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "green_button.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "blue_button.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "white_button.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "strobe_switch.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "color.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rainbow.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "list2para.js",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX",
				"patcherrelativepath" : "../sig2DMX",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "led_strobe_switch.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "output_to_art-net.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "DOTZ_PAR.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX",
				"patcherrelativepath" : "../sig2DMX",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Mini_moving.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX",
				"patcherrelativepath" : "../sig2DMX",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "frat_par_qwh12.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX",
				"patcherrelativepath" : "../sig2DMX",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "strobe_3ch.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX",
				"patcherrelativepath" : "../sig2DMX",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pocket_pro.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX",
				"patcherrelativepath" : "../sig2DMX",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "fade.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cyan_button.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "magenta_button.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "yellow_button.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX/color_button",
				"patcherrelativepath" : "../sig2DMX/color_button",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octo.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "octopod_48ch.maxpat",
				"bootpath" : "~/Desktop/VAE_for_lighting/sig2DMX(octo)",
				"patcherrelativepath" : "../../../../../../Desktop/VAE_for_lighting/sig2DMX(octo)",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rand.dmxp",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/sig2DMX",
				"patcherrelativepath" : "../sig2DMX",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "VAE.maxpat",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vae_lighting.js",
				"bootpath" : "~/Downloads/Lighting_System_in-RealTime-main/Lighting_System_in-RealTime-main/windows/se-real-LightingKiller/node_content",
				"patcherrelativepath" : "../node_content",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ld.set-matrix.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "imp.artnet.controller.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "ld.ptarget.separate.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "OSC-route.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "tap",
				"default" : 				{
					"fontname" : [ "Lato Light" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
	}

}
