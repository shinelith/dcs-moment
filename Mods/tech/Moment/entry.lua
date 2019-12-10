declare_plugin("Moment",
{
    installed = true,
    dirName = current_mod_path,
    version = "1.0.2",
    state = "installed",

    fileMenuName = "Moment",
    displayName = "Moment",
    developerName = "lith",
	creditsFile = "credits.txt";
    info = _("随机将截图作为壁纸，点击'设置壁纸'启用插件"),

    Skins	=
	{
		{
			name	= _("Moment"),
			dir		= "Theme"
		},
	},
})

plugin_done()