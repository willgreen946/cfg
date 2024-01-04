require('vis')

vis.events.subscribe(vis.events.INIT, function()
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set number')
	vis:command('set theme base16-apathy')
	vis:command('set escdelay 0')
end)
