function onCreatePost()
    --setProperty('iconP1.y', getProperty('iconP1.y') + 10)
    --makeAnimatedLuaSprite('fakeIcon', 'icons/icon-omega-weegee-animated', 0, getProperty('iconP1.y') - 100)
    --addAnimationByPrefix('fakeIcon', 'idle', 'idle', 24, true)
    --playAnim('fakeIcon', 'idle')
    --screenCenter('fakeIcon', 'x')
    --setScrollFactor('fakeIcon', 1.0, 1.0)
    --setObjectCamera('fakeIcon', 'camHUD')
    --addLuaSprite('fakeIcon', false)
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if curBeat >= 424 and not botPlay and noteType ~= 'GF Sing' and not gfSection then -- only giga weegee triggers the spiral event after beat 424
        if isSustainNote then
            setProperty('spaceMashImage.alpha', getProperty('spaceMashImage.alpha') + 0.01)
        else
            setProperty('spaceMashImage.alpha', getProperty('spaceMashImage.alpha') + 0.02)
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
    if curBeat >= 424 then
        if keyJustPressed('space') or mouseClicked('left') then
            setProperty('spaceMashImage.alpha', getProperty('spaceMashImage.alpha') - 0.05)
        end
    end
    setProperty('tipsandroid.alpha', getProperty('spaceMashImage.alpha'))
    --iconMult = getProperty('healthBar.y') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('fakeIcon.scale.y')) / 2 - 26 * 2)
    --setProperty('fakeIcon.y',iconMult - 240)
    --setProperty('fakeIcon.origin.y',-100)
end

function onUpdatePost(elapsed)
    --setProperty('iconP2.alpha', 0)
    --screenCenter('iconP1', 'x')
end