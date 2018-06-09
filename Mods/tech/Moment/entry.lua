declare_plugin("Moment by LITH",
{
    installed = true,
    dirName = current_mod_path,
    version = "1.0.0",
    state = "installed",

    fileMenuName = _("Moment"),
    displayName = _("Moment"),
    developerName = _("LITH"),
    info = _("看腻了官方壁纸的话不如试试这个工具\n把Moment设为壁纸，每当启动DCS，主界面壁纸会自动随用户截图进行改变，一起回顾精彩时刻吧。"),

    Skins	=
	{
		{
			name	= _("Moment"),
			dir		= "Theme"
		},
	},
})

plugin_done()