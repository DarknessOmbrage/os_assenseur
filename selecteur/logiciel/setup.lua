--os.loadAPI("Templates/accueil")
--variables (w=51 v=19)

local osVer = "Beta 1.0 assansseur !!"
local mTage = "pour montées au premier ou deusieme étages"
local pTage = "tapé 1 pour aller au premier !"
--local dTage = "tapé 2 pour aller au deusieme !"

--functions

local function tb_Draw()
        term.setCursorPos(1,1)
        term.setBackgroundColor(8)
        term.setTextColor(1)
        term.clearLine()
        print(osVer)
end

local function tb_Draw2()
        term.setCursorPos(4,2)
        term.setBackgroundColor(16384)
        term.clearLine()
        print(mTage)
end

local function tb_Draw3()
        term.setCursorPos(9,3)
        term.setBackgroundColor(256)
        term.clearLine()
        print(pTage)
end

local function tb_Draw4()
        term.setCursorPos(9,4)
        term.setBackgroundColor(128)
        term.clearLine()
        print(dTage)
end


local function tb_Draw5()
        term.setCursorPos(23,10)
        term.setBackgroundColor(128)
end

local function message()
        term.setCursorPos(5,11)
        term.setBackgroundColor(128)
end

local function initial()
        rs.setOutput("back", true)
        sleep(2)
        rs.setOutput("back", false)

end
--appelle des functions
term.clear()
os.loadAPI("Templates/accueil.lua")
tb_Draw()
tb_Draw2()
tb_Draw3()
--tb_Draw4()

--menu
os.pullEvent = os.pullEventRaw
tb_Draw5()
text = read()
if text == ("1") then
    message()
    --initial()
    rednet.send(4, "1")
    os.loadAPI("logiciel/data/1tage.lua")
    --print("monte dans l'assanseur décole dans 10 sec !!")

    
--[[elseif text == ("2") then
    message()
    print("monte dans l'assanseur décole dans 10 sec !!")
    rs.setOutput("back", false)
    os.sleep(1)
    rs.setOutput("right", true)
    os.sleep(1)
    rs.setOutput("right", false)
    os.sleep(2)
    --os.loadAPI("logiciel/data/as_en_haut")
    os.reboot()
    ]]
elseif text == ("admin") then
    
    os.loadAPI("logiciel/data/admin.lua")
    
elseif text == ("panne") then
    rednet.send(4, "panne")
    sleep(1)
    os.loadAPI("logiciel/data/panne.lua")
    
--[[elseif text == ("initial") then
        print("Position initial en cours !!")
        sleep(1)
        rs.setOutput("back", true)
        sleep(2)
        rs.setOutput("back", false)
        os.reboot()
        ]]
else
    os.loadAPI("logiciel/data/error.lua")
    
    
end