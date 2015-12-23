term.clear()
term.setCursorPos(1,1)
--rednet start
rednet.open("bottom")
os.sleep(2)
    if rs.getInput("top") == false then
        rednet.send(6, "aeh")
        rednet.send(7, "assenseur en haut !!")
        print("assanseur en haut !!")
        os.loadAPI("logiciel/setup")
    else
        rednet.send(6, "ok?")
    end
--rednet.send(6, "ok?")
os.pullEvent = os.pullEventRaw
--variables

local id,command,pos = rednet.receive()

--menu
if id == 6 then
       
    if command == ok then
		rednet.send(7, "assenseur ok !!")
        print("DONE !")
        print("En attente de commands")
        sleep(1)
        os.loadAPI("logiciel/setup")
    end
    
    
    
end
