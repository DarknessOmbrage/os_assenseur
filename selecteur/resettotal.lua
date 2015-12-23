print "You erase os system on your computer ?"

print "erase [Y/n]"

    local input = read():lower():sub(1,1)
	
	if input == 'n' then
				print "not erase !"
	else
		
		if fs.exists('resettotal.lua') then
			fs.delete('resettotal.lua')
		end
		
		if fs.exists('startup.lua') then
			fs.delete('startup.lua')
		end
		
		if fs.exists('startup-old.lua') then
			fs.delete('startup-old.lua')
		end
		
		if fs.exists('templates') then
			fs.delete('templates')
		end
		
		if fs.exists('logiciel') then
			fs.delete('logiciel')
		end
		
		if fs.exists('rb.lua') then
			fs.delete('rb.lua')
		end
		
		if fs.exists('startupbis.lua') then
			fs.delete('startupbis.lua')
		end
		
		if fs.exists('installer.lua') then
			fs.delete('installer.lua')
		end
			
print "erase DONE !"
sleep(1)
print "Rebooting !"
sleep(1)
os.reboot()

end
