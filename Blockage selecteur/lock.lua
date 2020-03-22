--[[
	This is a Computercraft Security System, made by
	FiMa_Coders. You are free to use the code wherever
	you want in your builds, but you are not allowed
	change the code in any way, except for the things 
	that are marked "CHANGABLE".
	
	If you want to share this program, you can by routing
	people to:
	http://turtlescripts.com/project/gjdi5q-Security-Code-Lock
]]

os.pullEvent = os.pullEventRaw
shell.openTab("lock2")
sleep(0.1)
shell.switchTab(2)


m = peripheral.wrap("back")
m.clear()
m.setTextScale(0.5)
m.setBackgroundColor(colors.black)
m.setTextColor(colors.white)

load = fs.open("Config", "r")
code,autoReset,waitTime,redstoneSide = unpack(textutils.unserialize(load.readAll()))
load.close()

inp = {}
sPos = 4


function mGUI()
	gui = {
		[[  FiMa_Coders  ]],
		[[ Security INC. ]],
		[[ +-----------+ ]],
		[[ |           | ]],
		[[ +---+---+---+ ]],
		[[ | 1 | 2 | 3 | ]],
		[[ | 4 | 5 | 6 | ]],
		[[ | 7 | 8 | 9 | ]],
		[[ | X | 0 | > | ]],
		[[ +---+---+---+ ]],
		}
	m.setTextColor(colors.red)
	for i = 1,10 do
		m.setCursorPos(1,i)
		if i == 3 then
			m.setTextColor(colors.white)
		end
		m.write(gui[i])
	end
	m.setCursorPos(3,9)
	m.setBackgroundColor(colors.red)
	m.write(" X ")
	m.setCursorPos(11,9)
	m.setBackgroundColor(colors.lime)
	m.write(" > ")
	m.setCursorPos(3,4)
	m.setBackgroundColor(colors.lightGray)
	m.write("           ")
end

function open()
	if autoReset then
		if waitTime == 0 then waitTime = 2 end
		sleep(waitTime)
		rs.setOutput(redstoneSide,false)
		os.reboot()
	else
		m.setBackgroundColor(colors.black)
		m.clear()
		m.setTextScale(5)
		m.setCursorPos(1,1)
		m.write("<")
		ev, side, xPos, yPos = os.pullEvent("monitor_touch")
		rs.setOutput(redstoneSide,false)
		os.reboot()
	end
end

function checkInp()
	if #inp == #code then
		for f = 1,#code do
			if inp[f] == code[f] then
				if f == #code then
					m.setCursorPos(3,4)
					m.setBackgroundColor(colors.lime)
					m.write(" CORRECT!  ")
					rs.setOutput(redstoneSide,true)
					open()
				end
			else
				m.setCursorPos(3,4)
				m.setBackgroundColor(colors.red)
				m.write("WRONG CODE!")
				sleep(3)
				os.reboot()
			end
		end
	else
		m.setCursorPos(3,4)
		m.setBackgroundColor(colors.red)
		m.write("WRONG CODE!")
		sleep(3)
		os.reboot()
	end
end

function input()
	mGUI()
	while true do
		ev, side, xPos, yPos = os.pullEvent("monitor_touch")
		print(xPos..":"..yPos)
		if ev == "monitor_touch" then
			if xPos > 2 and xPos < 6 and yPos == 6 then
				table.insert(inp,1)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 6 and xPos < 10 and yPos == 6 then
				table.insert(inp,2)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 10 and xPos < 14 and yPos == 6 then
				table.insert(inp,3)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 3 and xPos < 5 and yPos == 7 then
				table.insert(inp,4)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 7 and xPos < 9 and yPos == 7 then
				table.insert(inp,5)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 11 and xPos < 13 and yPos == 7 then
				table.insert(inp,6)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 3 and xPos < 5 and yPos == 8 then
				table.insert(inp,7)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 7 and xPos < 9 and yPos == 8 then
				table.insert(inp,8)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 11 and xPos < 13 and yPos == 8 then
				table.insert(inp,9)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 3 and xPos < 5 and yPos == 9 then
				inp = {}
				m.setCursorPos(3,4)
				m.write("           ")
				sPos = 4
			elseif xPos > 7 and xPos < 9 and yPos == 9 then
				table.insert(inp,0)
				m.setCursorPos(sPos,4)
				m.write("*")
				sPos = sPos+1
			elseif xPos > 11 and xPos < 13 and yPos == 9 then
				checkInp()
			end
		end
	end
end

input()