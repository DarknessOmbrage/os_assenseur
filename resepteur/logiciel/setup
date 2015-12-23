--variables

local osVer = "Test assenseur wifi"
local id,command,pos = rednet.receive()
--functions

local function version()
        term.setCursorPos(1,1)
        term.setBackgroundColor(colors.black)
        term.setTextColor(colors.white)
        term.clearLine()
        print(osVer)
end

--appel function
term.clear()
version()
--menu
os.pullEvent = os.pullEventRaw
if id == 6 then
    
    if command == "error" then
        rednet.send(7, "error ordi selecteur")
        os.sleep(7)
        os.reboot()
    end
    
    if command == "panne" then
        rednet.send(7, "Panne assansseur 1 !!")
        os.loadAPI("logiciel/data/panne")
    end
       
    if command == "1" then
        rednet.send(7, "assenseur monte au 1tage !!")
        os.loadAPI("logiciel/data/1tage")
    end
    
    if command == "rb" then
        os.sleep(2)
        os.reboot()
    end
    
    if command == "reset" then
        rednet.send(7, "assenseur dessant !!")
        rs.setOutput("right", true)
        os.sleep(2)
        rs.setOutput("right", true)
        os.reboot()
    end
end