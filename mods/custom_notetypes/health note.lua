function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'health note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'nota_de_cura_assets'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function goodNoteHit(id, i, noteType, isSustainNote)
		if noteType == 'health note' then
			playSound('health', 1)
			setProperty('health', 500);
		characterPlayAnim('boyfriend', 'pre-attack', true);
		characterPlayAnim('pico', 'down', true);

	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'health note' then
		playSound('health', 1)
		characterPlayAnim('boyfriend', 'pre-attack', true);
		characterPlayAnim('pico', 'down', true);
	end
end