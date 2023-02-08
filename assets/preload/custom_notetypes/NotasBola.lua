function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'NotasBola' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NotasBola'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'NotasBola' then
			playSound('NotasBola', 2)
			setProperty('health', -1.30);
	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'NotasBola' then
		playSound('NotasBola', 2)
		characterPlayAnim('SonicRun2', 'dodge', true);
		characterPlayAnim('EggmanRun', 'dodge', true);
	end
end