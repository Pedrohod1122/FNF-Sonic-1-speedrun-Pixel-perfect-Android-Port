function onEvent(name, value1, value2)
	if name == "Iman" then
		makeLuaSprite('image', value1, 1120, 590);
	        setLuaSpriteScrollFactor('iamge', 1120, 590);
		addLuaSprite('image', true);
		doTweenColor('hello2', 'image', 'FFFFFFFF', 0.5, 'quartIn');
		setObjectCamera('image', 'other');
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye2', 'image', 0, 0.1, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye2' then
		removeLuaSprite('image', true);
	end
end