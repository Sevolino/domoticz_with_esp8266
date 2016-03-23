commandArray = {}

DomDevice = 'nodemcu'
IP = '192.168.1.196'
Port = '8888'
runcommand=""

if devicechanged[DomDevice] then
   if(devicechanged[DomDevice]=='Off') then
     print ("Turning off " .. DomDevice)
     runcommand = "echo 0  | nc 192.168.1.196 8888"
   else
     print ("Turning on " .. DomDevice)
     runcommand = "echo 1  | nc 192.168.1.196 8888 "
   end
   print (runcommand)
   os.execute(runcommand)
 end
return commandArray
