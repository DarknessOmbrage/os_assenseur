--variables

local osVer = "Alpha 1.0 assansseur !!"

--functions

local function versionOS()
        term.setCursorPos(1,1)
        term.setBackgroundColor(8)
        term.setTextColor(1)
        term.clearLine()
        print(osVer)
end

local function erreur()
        term.setCursorPos(15,10)
        term.setBackgroundColor(128)
        term.setTextColor(1)
        term.clearLine()
        print("Erreur Syntax !!")
end

os.pullEvent = os.pullEventRaw
term.clear()
os.loadAPI("Templates/background2")
versionOS()
erreur()
rednet.send(4, "error")
os.sleep(5)
os.reboot()