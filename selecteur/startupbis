--rednet start
rednet.open("bottom")

--variables

local id,command,pos = rednet.receive()

--menu

if id == 4 then
    
    if command == "ok?" then
        rednet.send(4, ok)
        print("DONE !")
        sleep(1)
        os.loadAPI("logiciel/setup")
        
    end
    
    if command == "aeh" then
        os.loadAPI("logiciel/data/as_en_haut")
    
    end
    
    
end