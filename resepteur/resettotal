print "You erase os system on your computer ?"

print "erase [Y/n]"

    local input = read():lower():sub(1,1)
	
	if input == 'n' then
				print "not erase !"
	else
		
		if fs.exists('resettotal') then
			fs.delete('resettotal')
		end
		
		if fs.exists('startup') then
			fs.delete('startup')
		end
		
		if fs.exists('startup-old') then
			fs.delete('startup-old')
		end
		
		if fs.exists('logiciel') then
			fs.delete('logiciel')
		end
		
		if fs.exists('sd') then
			fs.delete('sd')
		end
		
		if fs.exists('startupbis') then
			fs.delete('startupbis')
		end
		
		
print "erase DONE !"
sleep(1)
print "Rebooting !"
sleep(1)
os.reboot()

end