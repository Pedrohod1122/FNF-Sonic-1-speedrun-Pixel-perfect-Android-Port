function onCreate()
	
	for i = 0, getProperty('unspawnNotes.length')-1 do
	
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Esmeraldas2' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Esmeraldas2'); 

			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023');

			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.023');

			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', false);

		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Esmeraldas2' then
			playSound('NOEmerald', 2)
	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Esmeraldas2' then
		playSound('Emerald', 2)
	end
end