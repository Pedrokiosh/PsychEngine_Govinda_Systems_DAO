function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'TNT note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'TNT_note_assets'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function goodNoteHit(id, i, noteType, isSustainNote)
		if noteType == 'TNT note' then
			playSound('explosion', 1)
			setProperty('health', -250);
		characterPlayAnim('boyfriend', 'pre-attack', true);
		characterPlayAnim('pico', 'down', true);

	end
end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'TNT note' then
		playSound('explosion', 1)
		characterPlayAnim('boyfriend', '', true);
		characterPlayAnim('pico', 'down', true);
	end
end