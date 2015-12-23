--variables  (w=51 v=19)

local osVer = "Beta 1.0 assansseur !!"
--local id,command,pos = rednet.receive()
--functions

local function versionOS()
        term.setCursorPos(1,1)
        term.setBackgroundColor(8)
        term.setTextColor(1)
        term.clearLine()
        print(osVer)
end

local function panne()
        term.setCursorPos(15,10)
        term.setBackgroundColor(128)
        term.setTextColor(1)
        print("Assansseur en panne !!")
end

--appelle functions
os.pullEvent = os.pullEventRaw
        term.clear()
        os.loadAPI("Templates/background2")
        versionOS()
        panne()
--rs.setOutput("back", 13)
--os.sleep(1)
--os.reboot()
local id,command,pos = rednet.receive()
if id == 4 then
        term.clear()
        os.loadAPI("Templates/background2")
        versionOS()
        panne()
        if command == "ok" then
                os.reboot()
        end

end