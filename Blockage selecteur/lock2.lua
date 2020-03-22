os.pullEvent = os.pullEventRaw
while true do
	term.clear()
	term.setCursorPos(1,1)
	print("FiMa_Coders Security INC.")
	print("")
	write("Pass> ")
	input = read("*")
	sfile = io.open("code", "r")
	pass = sfile:read()
	sfile:close()
	if pass == input then
		term.clear()
		term.setCursorPos(1,1)
		print("FiMa_Coders Security INC.")
		print("")
		print("1 = Change monitor settings")
		print("2 = Change terminal code")
		print("3 = Exit")
		print("")
		write("> ")
		input2 = read()
		if input2 == "1" then
			shell.run("edit config")
			os.reboot()
		elseif input2 == "2" then
			shell.run("edit code")
			sleep(0)
		elseif input2 == "3" then
			sleep(0)
		end
	else
		print("Wrong code")
		sleep(3)
	end
end