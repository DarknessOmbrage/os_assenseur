--variables  (w=51 v=19)

local osVer = "Beta 1.0 assansseur !!"
local msg = "Tape Y pour redesendre l'assansseur"

--functions

local function versionOS()
        term.setCursorPos(1,1)
        term.setBackgroundColor(8)
        term.setTextColor(1)
        term.clearLine()
        print(osVer)
end

local function message()
        term.setCursorPos(5,5)
        term.setBackgroundColor(512)
        term.setTextColor(1)
        term.clearLine()
        print(msg)
        

end

local function Draw()
        term.setCursorPos(20,10)
        term.setBackgroundColor(128)
end

--appelle functions
os.pullEvent = os.pullEventRaw
        term.clear()
        os.loadAPI("Templates/background2.lua")
        versionOS()
        message()
Draw()
text = read()

if text == ("Y") then
        
        rednet.send(4, "reset")
        print("L'assanseur dessant !")
        os.sleep(1)
        os.reboot()
        
elseif text == ("y") then
        
        rednet.send(4, "reset")
        print("L'assanseur dessant !")
        os.sleep(1)
        os.reboot()
        
else
        os.loadAPI("logiciel/data/error.lua")
end
