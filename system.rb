require 'time'

DB = {"YourName1" => "XXXXXXXXXXXXXXX",
        "YourName2" => "XXXXXXXXXXXXXXX" }

def cardload()
    `sudo python cardload.py`
end

def unlock
    `sudo python unlock.py & mpg321 loadcp.mp3`
end

def lock
    `sudo python lock.py`
end

def id(outid)
        matchcode = outid.match(/ID=(.*?)\s/)
        myid = matchcode[1]
        return myid
rescue
	error = '00000000000'
	return error
end

loop do
    print("Locker>>Waiting Card...\n")
    getid = id(cardload)
    username = DB.key(getid)

    unless username == nil
        file = File.open('log.txt','a')
        print("Locker>>Auth OK: #{username} \n")
        timestanp = DateTime.now
	unlock
        file.puts "#{timestanp}  Unlock  #{username}"
        file.close
        sleep(10)
	lock
        system("clear")
    else
        print("Locker>>Auth NG: Unregistred ID\n")
	sleep(2)
        system("clear")
    end

end
