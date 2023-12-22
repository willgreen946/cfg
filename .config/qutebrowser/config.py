config.load_autoconfig(False)

# light mode is cringe
config.set("colors.webpage.darkmode.enabled", True)

# Bar control
config.set("tabs.show", "switching")
config.set("tabs.position", "left")
config.set("statusbar.show", "never")

# javascript is cringe
#config.set("content.javascript.enabled", False)

# disable history coz read writes I geuss
config.set("completion.web_history.max_items", 0)
config.set("completion.cmd_history_max_items", 0)

FONT = "10pt spleen"

# terminus is the most elite font 
c.fonts.completion.entry = FONT 
c.fonts.completion.category = FONT 
c.fonts.debug_console = FONT 
c.fonts.downloads = FONT 
c.fonts.hints = FONT 
c.fonts.keyhint = FONT 
c.fonts.messages.error = FONT 
c.fonts.messages.info = FONT 
c.fonts.messages.warning = FONT 
c.fonts.prompts = FONT 
c.fonts.statusbar = FONT 
c.fonts.tabs.selected = FONT 
c.fonts.tabs.unselected = FONT 
#c.fonts.web.family.fixed = FONT 
#c.fonts.web.family.sans_serif = FONT
#c.fonts.web.family.serif = FONT

# searx.be as default page 
config.set("url.default_page", "https://searx.be")
config.set("completion.height", "25%")

# favicons are bloat
config.set("tabs.favicons.show", "never")

# colors, really just generic grey
config.set("colors.tabs.bar.bg", "#000000")
config.set("colors.tabs.selected.even.bg", "#000000")
config.set("colors.tabs.selected.even.fg", "#ffffff")
config.set("colors.tabs.even.bg", "#000000")
config.set("colors.tabs.even.fg", "#b9b9b9")
config.set("colors.tabs.selected.odd.fg", "#FFFFFF")
config.set("colors.tabs.selected.odd.bg", "#000000")
config.set("colors.tabs.odd.fg", "#b9b9b9")
config.set("colors.tabs.odd.bg", "#000000")
config.set("colors.hints.fg", "#FF8100")
config.set("colors.hints.bg", "#000000")
config.set("colors.statusbar.caret.fg", "#FF8100")
config.set("colors.statusbar.caret.bg", "#000000")
config.set("colors.statusbar.caret.selection.fg", "#FF8100")
config.set("colors.statusbar.caret.selection.bg", "#000000")
config.set("colors.statusbar.command.fg", "#FF8100")
config.set("colors.statusbar.command.bg", "#000000")
config.set("colors.statusbar.insert.fg", "#FF8100")
config.set("colors.statusbar.insert.bg", "#000000")
config.set("colors.prompts.bg", "#000000")
config.set("colors.prompts.fg", "#FFFFFF")
config.set("colors.completion.item.selected.match.fg", "#FF8100")
config.set("colors.contextmenu.menu.fg", "#FF8100")
config.set("colors.contextmenu.menu.bg", "#000000")
config.set("colors.completion.category.fg", "#FF8100")
config.set("colors.completion.category.bg", "#000000")
config.set("colors.completion.fg",	'#FF8100')
config.set("colors.completion.even.bg", "#000000")
config.set("colors.completion.item.selected.bg", "#FF8100")
config.set("colors.completion.item.selected.fg", "#FF8100")
config.set("colors.completion.item.selected.border.top", "#b9b9b9")
config.set("colors.completion.item.selected.border.bottom", "#FF8100")
config.set("colors.completion.odd.bg", "#000000")
config.set("colors.completion.fg", "#b9b9b9")

# opening different pages 
config.bind('s', 'open https://searx.org')
config.bind('S', 'open https://searx.be')
config.bind('w', 'open https://wiby.me')

# opening in external applications
config.bind('M', 'hint links spawn mpv {hint-url}')
config.bind('F', 'hint links spawn yt-dlp -o {hint-url} - | ffplay - -autoexit -')
config.bind('W', 'hint links download')

# more bindings similar to vieb as vieb is less retared
config.bind('d', 'tab-close')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('L', 'forward')
config.bind('H', 'back')

# vifm as file browser
config.set("fileselect.handler", "external")
config.set("fileselect.single_file.command", ['xterm', '-e', 'vifm', '--choose-files', '{}'])
config.set("fileselect.multiple_files.command", ['xterm', '-e', 'vifm', '--choose-files', '{}'])
