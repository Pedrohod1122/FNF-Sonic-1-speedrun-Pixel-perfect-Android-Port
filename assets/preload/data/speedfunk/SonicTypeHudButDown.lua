function onCreate()

	makeLuaText('#', '# :', 0, 180, 655)
	addLuaText('#')
	setTextColor('#', 'FFFFFF')
	
	makeLuaText('-', '- :', 0, 150, 530)
	addLuaText('-')
	setTextColor('-', 'FFFFFF')
	
	makeLuaText('_', '_ :', 0, 120, 590)
	addLuaText('_')
	setTextColor('_', 'FFFFFF')
	setObjectCamera('#', 'hud')
	setObjectCamera('-', 'hud')
	setObjectCamera('_', 'hud')
	
	setTextSize('_', 50)
	setTextSize('-', 50)
	setTextSize('#', 50)

	makeLuaSprite('time', 'time', 90.5, 613.15);
	setLuaSpriteScrollFactor('time', 0, 0);
    setProperty('time.scale.x', 3.8)
    setProperty('time.scale.y', 3.8)
	setProperty('time.antialiasing',false)

	addLuaSprite('time', true);
		setObjectCamera('time','hud')

	makeLuaSprite('misses', 'misses', 95.5, 678.15);
	setLuaSpriteScrollFactor('misses', 0, 0);
    setProperty('misses.scale.x', 3.8)
    setProperty('misses.scale.y', 3.8)
	setProperty('misses.antialiasing',false)

	addLuaSprite('misses', true);
		setObjectCamera('misses','hud')

	makeLuaSprite('score', 'score', 85.5, 548.15);
	setLuaSpriteScrollFactor('score', 0, 0);
    setProperty('score.scale.x', 3.8)
    setProperty('score.scale.y', 3.8)
	setProperty('score.antialiasing',false)

	addLuaSprite('score', true);
		setObjectCamera('score','hud')
if downscroll == true then
	makeLuaText('#', '# :', 0, 180, 155)
	addLuaText('#')
	setTextColor('#', 'FFFFFF')
	
	makeLuaText('-', '- :', 0, 150, 30)
	addLuaText('-')
	setTextColor('-', 'FFFFFF')
	
	makeLuaText('_', '_ :', 0, 120, 90)
	addLuaText('_')
	setTextColor('_', 'FFFFFF')
	setObjectCamera('#', 'hud')
	setObjectCamera('-', 'hud')
	setObjectCamera('_', 'hud')
	
	setTextSize('_', 50)
	setTextSize('-', 50)
	setTextSize('#', 50)

	makeLuaSprite('time', 'time', 90.5, 113.15);
	setLuaSpriteScrollFactor('time', 0, 0);
    setProperty('time.scale.x', 3.8)
    setProperty('time.scale.y', 3.8)
	setProperty('time.antialiasing',false)

	addLuaSprite('time', true);
		setObjectCamera('time','hud')

	makeLuaSprite('misses', 'misses', 95.5, 178.15);
	setLuaSpriteScrollFactor('misses', 0, 0);
    setProperty('misses.scale.x', 3.8)
    setProperty('misses.scale.y', 3.8)
	setProperty('misses.antialiasing',false)

	addLuaSprite('misses', true);
		setObjectCamera('misses','hud')

	makeLuaSprite('score', 'score', 85.5, 48.15);
	setLuaSpriteScrollFactor('score', 0, 0);
    setProperty('score.scale.x', 3.8)
    setProperty('score.scale.y', 3.8)
	setProperty('score.antialiasing',false)

	addLuaSprite('score', true);
		setObjectCamera('score','hud')
     end

end
function onUpdate(elapsed)
setTextString('#', '#: ' .. getProperty('songMisses'))
setTextString('-', '-: ' .. getProperty('songScore'))
setTextString('_', '_: ' .. getTextString('timeTxt'))
end

function onCreatePost()
	setProperty('scoreTxt.visible', 0)
	setProperty("timeTxt.visible", false);
	setProperty("timeBar.visible", false)
	setProperty("timeBarBG.visible", false)
    setProperty('healthBar.x', 500);
end