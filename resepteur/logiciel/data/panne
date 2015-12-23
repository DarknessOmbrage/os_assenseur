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
rs.setOutput("front", true)
print("Panne Détecter")
print("taper ok si probleme resolu -->")
term.setCursorPos(33,3)

text = read()

if text == ("ok") then
rednet.send(7, "Assanseur 1 ok !!")
rednet.send(6, "ok")
os.sleep(1)
os.reboot()
end
