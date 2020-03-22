rednet.open("bottom")
os.pullEvent = os.pullEventRaw
local function centerTextXY(text)
local w,h = term.getSize()
term.setCursorPos(math.floor(w/2-text:len()/2+.5), math.floor(h/2+.5))
mon.setTextScale(2)
io.write(text)
end

local function centerTextX(text)
local w,h = term.getSize()
term.setCursorPos(math.floor(w/2-text:len()/2+.5),1)
io.write(text)
end

term.clear()
term.setCursorPos(1,1)

centerTextX("Computer ID"..os.getComputerID())
print()
print()

while true do
        id,message = rednet.receive()
        
        local nTime = os.time()
        time_line = textutils.formatTime(nTime,false)
        
        print(time_line..">"..message)
        
        mon = peripheral.wrap("top")
        term.redirect(mon)
        term.setCursorBlink(false)
        term.setTextColor(colors.blue)
        term.setBackgroundColor(colors.white)
        term.clear()
        term.setCursorPos(1,1)
        centerTextXY(message)
        term.redirect(term.native())
        
end
