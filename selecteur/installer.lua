local url = "https://raw.github.com/Siddu62/os_assenseur/master/selecteur/"
local files = {}
local filelist = {
	'rb.lua';
	'startupbis.lua';
	'logiciel/setup.lua';
	'logiciel/data/1tage.lua';
	'logiciel/data/admin.lua';
	'logiciel/data/as_en_haut.lua';
	'logiciel/data/error.lua';
	'logiciel/data/panne.lua';
	--'templates/accueil.lua';
	--'templates/background2.lua';
	'resettotal.lua';
}

local function clear()
		term.clear()
		term.setCursorPos(1,1)
end

clear()
local errors = false
for i=1, #filelist do
		local filename = filelist[i]
		local fullurl = url .. filename
		local localpath = '/'..filename
		
		local download = http.get(fullurl)
		if download then
			print("DONE")
			files[localpath] = download.readAll()
			download.close()
		else
			print("Couldn't get "..filename)
			print "Installation failed."
			return
		end
end
sleep(1)

local installed = false
if fs.exists('/logiciel') then
	clear()
	installed = true
	
	write "Overwrite current installation? [Y/n] "
	local input = read():lower():sub(1,1)
	if input == 'n' then
		print "Will not write files."
		return
	end
	fs.delete('/logiciel')
end

clear()
fs.makeDir('/logiciel')
fs.makeDir('/logiciel/data')
fs.makeDir('/Templates')
for path, content in pairs(files) do
		print("Writing "..path)
		local file = fs.open(path, 'w')
		file.write(content)
		file.close()
end
print "Installation complete!"
sleep(1)

if not installed then
	clear()
	
	local startupContent = [[
		shell.run("startupbis")
	]]
	
	write "Run os_assenseur on startup? "
	if fs.exists('startup') then
		print "\nYour current startup file will be renamed to startup-old."
	end
	write "[Y/n] "
	
    local input = read():lower():sub(1,1)
	
	if input == 'n' then
				print "In that case, run startupbis to start os_assenseur."
	else
		if fs.exists('startup') then
			if fs.exists('startup-old') then
				fs.delete('startup-old')
			end
			fs.move('startup','startup-old')
		end
		
		local startup = fs.open('startup', 'w')
		startup.write(startupContent)
		startup.close()
		print "os_assenseur will now run on startup."
	end
end