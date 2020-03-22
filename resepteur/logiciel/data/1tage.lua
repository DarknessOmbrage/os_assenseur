--variables

local osVer = "Test assenseur wifi"
--local id,command,pos = rednet.receive()

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
rs.setOutput("back", true)
os.sleep(3)
rs.setOutput("back", false)
os.sleep(1)
rednet.send(6, "ok")
os.sleep(3)
os.reboot()