require('vis')

vis.events.subscribe(vis.events.INIT, function()
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set number')
	vis:command('set theme base16-macintosh')
	vis:command('set escdelay 0')
	vis:command('set tabwidth 2')
	vis:command('set colorcolumn 80')
end)
