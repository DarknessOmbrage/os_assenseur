--variables

local osVer = "Alpha 1.0 assansseur !!"


--functions
local function tb_Draw()
	term.setCursorPos(1,1)
	term.setBackgroundColor(8)
	term.setTextColor(1)
	term.clearLine()
	print(osVer)
end

local function tb_Draw2()
        term.setCursorPos(1,4)
        term.setBackgroundColor(7)
        term.setTextColor(1)
        term.clearLine()
        print("Mot de Passe ?")

end

local function message()
        term.setCursorPos(20,10)
        term.setBackgroundColor(128)
end

local function background()
        os.loadAPI("Templates/background2")

end

--appelle des functions

term.clear()
background()
tb_Draw()
tb_Draw2()
message()
--encryptage du code tapé
os.pullEvent = os.pullEventRaw
read = read("*")

if read == MDP then

  print("Accés autorisée !")

 elseif read == ("Admin62as") then
   sleep(1)
   print("Vérification du Mot de Passe")
   sleep(1)
   print("Accès autorisé !")
   sleep(1)
   background()
  
else
  sleep(1)
  print("Vérification du Mot de Passe")
  sleep(1)
  print("Accès refuser !")
  sleep(1)
  os.reboot()
end
