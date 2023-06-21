return function(cutscene, cell_phone_event_override)
    local had_music = Game.world.music:isPlaying()

    local function pauseMusic()
        if had_music then
            Game.world.music:pause()
        end
    end
    local function resumeMusic()
        if had_music then
            Game.world.music:resume()
        end
    end

    local music_inst = Music()
    cutscene:after(function()
        music_inst:remove()
    end)
    local function playCellPhoneAudio(path, ...)
        local epic_hax = "cell_phone/"
        if string.sub(path, 1, string.len(epic_hax)) == epic_hax then
            -- requiring a sound in assets/music
            music_inst:play(path, ...)
            music_inst.source:setLooping(false)
            return function() return not music_inst:isPlaying() end
        else
            return cutscene:playSound(path, ...)
        end
    end
    local function garbageNoise(path, time)
        pauseMusic()

        local wait = playCellPhoneAudio(path, 0.8)
        if time then
            cutscene:wait(time)
        else
            cutscene:wait(wait)
        end

        resumeMusic()
    end
    local function pacematchingMsg(text, wait, portrait, actor)
        cutscene:text("[noskip][voice:nil]" .. text .. string.format("[wait:%g]", wait), portrait, actor, { auto = true })
    end

    Assets.playSound("phone", 0.7)
    cutscene:text("* (You tried to call on the Cell\nPhone.)", nil, nil, { advance = false })
    cutscene:wait(1.5)

    local event_num = cell_phone_event_override ~= nil and cell_phone_event_override or love.math.random(1, 100)

    if event_num <= 10 then
        garbageNoise("cell_phone/mcdonalds")

        cutscene:text("* Sounded like an angry customer.")
    elseif event_num == 39 then
        cutscene:text("* Hello!\n* Could I speak to G...")
        cutscene:text("* ...[wait:5]\n* Wait a second.")
        cutscene:text("* Is this the wrong number?")
        pauseMusic()
        music_inst:play("wrongnumbersong", 0.8)
        cutscene:text("* Oh it's the wrong number![wait:2]\n* The wrong number song!")
        cutscene:text("* We're very very sorry that\nwe got it wrong!")
        cutscene:text("* Oh it's the wrong number![wait:2]\n* The wrong number song!")
        cutscene:text("* We're very very sorry that\nwe got it wrong!")
        music_inst:stop()
        resumeMusic()

        cutscene:text("* (Click...)")
        cutscene:text("* Must've been a wrong number.")
    elseif event_num >= 87 and event_num <= 93 then
        garbageNoise("cell_phone/fnafcall")

        cutscene:text("* It's nothing but useless information.")
    elseif event_num == 97 then
        pauseMusic()
        local spam = playCellPhoneAudio("cell_phone/spamcall", 0.8)

        cutscene:showNametag("Spamton G. Spamton")
        pacematchingMsg("* FUCK YOU CYBER CITY!", 10)
        pacematchingMsg("* IF YOU'RE [[Exploitable]] ENOUGH TO BUY A CAR THIS WEEKEND...", 5)
        pacematchingMsg("* YOU'RE A DESPERATE ENOUGH JOE SHMOE TO COME TO BIG SHOT AUTOS!", 15)
        pacematchingMsg("* [[Ant-sized]] DEALS![wait:10]\n* CARS THAT [[Need auto insurance?]]!", 10)
        pacematchingMsg("* THIEVES!", 10)
        pacematchingMsg("* IF YOU THINK YOU'RE GOING TO FIND [[A free meal!]] AT BIG SHOT AUTOS...", 5)
        pacematchingMsg("* YOU CAN KISS MY [[Beautiful head]]!!", 15)
        pacematchingMsg("* IT'S MY BELIEF THAT YOU'RE SUCH A [[Specil]] MOTHERFUCKER...", 5)
        pacematchingMsg("* THAT YOU'LL FALL FOR THIS [[Half-priced salamy]]!", 10)
        pacematchingMsg("* GUARANTEED!", 20)
        pacematchingMsg("* IF YOU FIND A [[50% off]] DEAL,[wait:20] YOU CAN SHOVE [[1000 KROMER]] UP YOUR UGLY ASS!", 25)
        pacematchingMsg("* YOU HEARD ME RIGHT...", 5)
        pacematchingMsg("* SHOVE IT UP YOUR UGLY ASS!", 15)
        pacematchingMsg("* BRING YOUR [[100th customer!]]![wait:5]\n* BRING YOUR [[Wild prizes]]![wait:5]\n* BRING YOUR [[Hochi mama]]!", 5)
        pacematchingMsg("* I'LL FUCK HER!", 5)
        pacematchingMsg("* THAT'S RIGHT![wait:3] I'LL FUCK YOUR [[Hochi mama]]!", 10)
        pacematchingMsg("* BECAUSE AT BIG SHOT AUTOS,[wait:3] YOU'RE FUCKED SIX WAYS TO SUNDAY!", 15)
        pacematchingMsg("* TAKE A HIKE TO BIG SHOT AUTOS!", 15)
        pacematchingMsg("* HOME OF CHALLENGE [[Pipis.]]!", 10)
        pacematchingMsg("* THAT'S RIGHT,[wait:3] CHALLENGE [[Pipis.]]!", 15)
        pacematchingMsg("* HOW DOES IT WORK?", 10)
        pacematchingMsg("* IF YOU CAN [[Pipis.]] SIX FEET IN THE AIR STRAIGHT AND NOT GET WET...", 5)
        pacematchingMsg("* YOU GET [[No money back guarantee]]!", 10)
        pacematchingMsg("* DON'T WAIT,[wait:3] DON'T DELAY...", 5)
        pacematchingMsg("* DON'T FUCK WITH ME OR I'LL RIP YOUR [[Eggs]] OFF!", 10)
        pacematchingMsg("* ONLY AT BIG SHOT AUTOS!", 15)
        pacematchingMsg("* THE ONLY DEALER THAT TELLS YOU TO FUCK OFF!", 20)
        pacematchingMsg("* HURRY UP, ASSHOLE!", 10)
        pacematchingMsg("* THIS [[Specil deal]] ENDS THE MOMENT YOU WRITE US A CHECK...", 5)
        pacematchingMsg("* AND IT BETTER NOT BOUNCE OR YOU'RE A [[Permanently closed]] MOTHERFUCKER!", 10)
        pacematchingMsg("* TAKE A GODDAMN VACATION STRAIGHT TO HELL!", 40)
        pacematchingMsg("* ALSO KNOWN AS BIG SHOT AUTOS...", 5)
        pacematchingMsg("* CYBER CITY'S FILTHIEST...", 5)
        pacematchingMsg("* AND EXCLUSIVE HOME OF THE [[Biggest]] SON OF A BITCH IN THE DARK WORLD!", 40)
        pacematchingMsg("* GUARANTEED!", 30)
        cutscene:hideNametag()

        cutscene:wait(spam)
        resumeMusic()

        cutscene:text("* ...")
        cutscene:text("* What.")

        if cutscene:getCharacter("susie") then
            cutscene:showNametag("Susie")
            cutscene:text("* The hell was THAT?", "nervous", "susie")
            cutscene:hideNametag()
        end
    elseif event_num >= 11 and event_num <= 25 then
        --[[
        Char's easteregg
        based on what I changed the cellphone to in an unreleased mod
        I made to test out how Kristal works that was called
        Kris and Susie Gamer Time.
        ]]
        garbageNoise("cell_phone/bbqbb", 200 / 30)

        cutscene:text("* It's nothing but an old meme.")
    elseif event_num == 86 then
        pauseMusic()
        local carglass = playCellPhoneAudio("cell_phone/carglass", 0.8)

        cutscene:wait(0.06)
        pacematchingMsg("[speed:0.7]* ~Carglass répare,[wait:3] Carglass remplace!~", 15)
        cutscene:showNametag("Olivier de Carglass")
        pacematchingMsg("* Bonjour.[wait:2] Je suis Olivier de Carglass.", 5)
        pacematchingMsg("* Vous pensez que cet impact est trop petit,[wait:2] et que ça ne vaut pas le coup de s'en occuper?", 4)
        pacematchingMsg("* Quand il fait chaud comme aujourd'hui...[wait:3]\n* On met la clim!", 6)
        cutscene:hideNametag()
        pacematchingMsg("* BEEP[wait:5] BEEP[wait:5] BEEP", 5)
        cutscene:wait(1.5)
        cutscene:showNametag("Olivier de Carglass")
        pacematchingMsg("* Et voilà.", 15)
        pacematchingMsg("* [speed:0.8]L'impact n'a pas supporté le changement brutal de température.", 10)
        pacematchingMsg("* Bien sûr,[wait:2] si demain ça vous arrive,[wait:2] chez Carglass,[wait:2] on remplacera votre parre-brise.", 10)
        pacematchingMsg("* Mais vous risquez de payer une franchise.", 5)
        pacematchingMsg("* Alors que si vous appelez Carglass dés que vous avez un impact", 20)
        pacematchingMsg("* On vient chez vous[wait:3] et on répare votre parre-brise sans le remplacer.", 20)
        pacematchingMsg("* On injecte notre récine spéciale en 30 minutes", 20)
        pacematchingMsg("* Le résultat est presque invisible", 20)
        pacematchingMsg("* Et le parre-brise retrouve sa solidité.\n[wait:15]* BUMP", 10)
        pacematchingMsg("* En plus,[wait:5] avec votre assurance Bri-Glass,[wait:2] le plus souvent chez Carglass", 10)
        pacematchingMsg("* La réparation,[wait:2] ça ne vous coûte rien.", 20)
        pacematchingMsg("* OUI VRAIMENT![wait:4]\nCa ne vous coûte rien!", 15)
        pacematchingMsg("* Alors n'attendez plus![wait:3] Appelez nous maintenant au 0[wait:2]800[wait:4] 7[wait:2]7[wait:6] 24[wait:2] 24", 20)
        pacematchingMsg("* Ou réservez sur carglass.fr", 10)
        cutscene:hideNametag()
        pacematchingMsg("[speed:0.7]* ~Carglass répare,[wait:3] Carglass remplace!~", 15)

        cutscene:wait(carglass)
        resumeMusic()

        cutscene:text("* It's nothing but a French ad.")
    elseif event_num == 52 then
        --[[
            Agent 7's easteregg
            The Legendary Soup Store.
        ]]
        pauseMusic()
        local soup = playCellPhoneAudio("cell_phone/soup", 0.8)

        cutscene:showNametag("???", {right = false})
        pacematchingMsg("[wait:3]* Hello?", 5)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* Hey,[wait:1] what's up?", 5)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("[speed:1.3]* I need your help,[wait:1] can you come here?", 5)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* Uhh I can't I'm buying clothes.", 5)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("* Alright,[wait:1] well hurry up and come over here.", 5)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* I can't find them.", 10)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("[speed:1.5]* What do you mean you \"can't find them\"?", 7)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("[speed:1.2]* I can't find them, there's only [color:#FFFF00]soup[color:reset].",20)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("* What do you mean there's \"only [color:#FFFF00]soup[color:reset]\"?", 20)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* It means[wait:2] there's only[wait:1] [color:#FFFF00]soup[color:reset]!", 10)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("* Well then get outta the [color:#FFFF00]soup aisle[color:reset]!!", 20)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* Alright,[wait:1] you don't have to shout at me!", 5)
        cutscene:hideNametag()
        cutscene:wait(2.5)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* There's more [color:#FFFF00]soup[color:reset]!", 3)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("* What do you mean there's \"more [color:#FFFF00]soup[color:reset]\"!?", 5)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* There's just more [color:#FFFF00]soup[color:reset]!", 7)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("* Go into the next aisle!", 20)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* There's still [color:#FFFF00]soup[color:reset]!", 5)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("* Where [speed:0.7]ARE you[speed:1] right now!?", 12)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* I'M [speed:0.7]AT [color:#FFFF00]SOUP[color:reset]!", 7)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("[speed:0.7]* WHAT DO YOU MEAN YOU'RE \"AT[wait:1] [color:#FFFF00]SOUP[color:reset]\"!?", 3)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* I MEAN I'M AT[wait:1] [color:#FFFF00]SOUP[color:reset]!", 15)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("[speed:0.7]* WHAT [color:red]STORE[color:reset][wait:1] ARE YOU IN!?", 7)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("[speed:0.7]* I'M AT THE [color:#FFFF00]SOUP STORE[color:reset]!!", 5)
        cutscene:showNametag("???", {right = false})
        pacematchingMsg("[speed:0.7][shake:1]* [color:red]WHY ARE YOU BUYING CLOTHES AT THE [color:#FFFF00]SOUP STORE[color:red]!?", 5)
        cutscene:showNametag("???", {right = true})
        pacematchingMsg("* [color:red]FUCK[wait:2] YOU!!", 20)
        cutscene:hideNametag()

        cutscene:wait(soup)
        cutscene:wait(1)
        resumeMusic()

        cutscene:text("* It's just an argument about soup.")
    -- if anyone wants to add an additional easter egg, feel free to use the template below!
    --[[
    elseif event_num == 100 then
        garbageNoise("path/to/cell_phone/audio")
        cutscene:text("What the fuck")
    ]]
    else -- fallthrough
        garbageNoise("smile", 200 / 30)

        cutscene:text("* It's nothing but garbage noise.")
    end
end
