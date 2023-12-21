function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if not botPlay then
        if isSustainNote then
            setProperty('spaceMashImage.alpha', getProperty('spaceMashImage.alpha') + 0.005)
        else
            setProperty('spaceMashImage.alpha', getProperty('spaceMashImage.alpha') + 0.01)
        end
    end
end

function onCreatePost()
	makeLuaText('tipsandroid', 'Click Screen !', 0, 0, 0)
	addLuaText('tipsandroid')
	setTextSize('tipsandroid', 30)
	screenCenter('tipsandroid')
	setProperty('tipsandroid.y', screenHeight - getProperty('tipsandroid.height') - 50)
	setObjectCamera('tipsandroid', 'camOther')
end

function onUpdate(elapsed)
    if getProperty('spaceMashImage.alpha') >= 1 then
        setHealth(0)
    end
    if keyJustPressed('space') or mouseClicked('left') then
        setProperty('spaceMashImage.alpha', getProperty('spaceMashImage.alpha') - 0.05)
    end
    
    setProperty('tipsandroid.alpha', getProperty('spaceMashImage.alpha'))
end