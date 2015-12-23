--variables w=51 v=19

local osVer = "Beta 1.0 assansseur !!"

button1 = {
        "----------------",
        "|premier étages|",
        "----------------"
}

button2 = {
        "-----------------",
        "|deusieme étages|",
        "-----------------"
}

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
        print("pour montées au premier ou deusieme étages")
end

local function tb_Draw3()
        term.setCursorPos(10,3)
        term.setBackgroundColor(256)
        term.clearLine()
        print("tapé 1 pour aller au premier !")
end

local function tb_Draw4()
        term.setCursorPos(9,4)
        term.setBackgroundColor(128)
        term.clearLine()
        print("tapé 2 pour aller au deusieme !")
end

--local function etage1()
--        if rs.getInput("back") == false then
--            trem.setCursorPos(1,18)
--            prit("Assasseur en panne !!")
--            os.sleep(3)
--            os.reboot()
--        else
--            rs.setOutput("left", true)
--           os.sleep(2)
--            rs.setOutput("left", false)
--end

--appelle des functions

term.clear()
tb_Draw()
tb_Draw2()
tb_Draw3()
tb_Draw4()

--menu

os.pullEvent = os.pullEventRaw

for k,v in ipairs(button1) do
        term.setCursorPos(15,6 + k)
        term.write(v)
end

for k,v in ipairs(button2) do
        term.setCursorPos(15,10 + k)
        term.write(v)
end