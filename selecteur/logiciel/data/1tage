--variables  (w=51 v=19)

local osVer = "Beta 1.0 assansseur !!"
--functions

local function versionOS()
        term.setCursorPos(1,1)
        term.setBackgroundColor(8)
        term.setTextColor(1)
        term.clearLine()
        print(osVer)
end

local function Draw()
        term.setCursorPos(20,10)
        term.setBackgroundColor(128)
end

--appelle functions
os.pullEvent = os.pullEventRaw
        term.clear()
        os.loadAPI("Templates/background2")
        versionOS()
        Draw()
        print("assenseur au premier etage")
local id,command,pos = rednet.receive()
if id == 4 then
        term.clear()
        os.loadAPI("Templates/background2")
        versionOS()
        Draw()
        print("assenseur au premier etage")
        if command == "ok" then
                os.reboot()
        end

end
