wifi.sta.config("Turris","R0b0tLab")
 wifi.sta.connect()
 tmr.alarm(1, 1000, 1, function()
  if wifi.sta.getip()== nil then
<<<<<<< HEAD
   print("IP unavaiable, Waiting...")
  else
    tmr.stop(1)
    print("ESP8266 mode is: " .. wifi.getmode())
    print("The module MAC address is: " .. wifi.ap.getmac())
    print("Config done, IP is "..wifi.sta.getip())
    dofile ("switch.lua")
  end
=======
  print("IP unavaiable, Waiting...")
 else
  tmr.stop(1)
 print("ESP8266 mode is: " .. wifi.getmode())
 print("The module MAC address is: " .. wifi.ap.getmac())
 print("Config done, IP is "..wifi.sta.getip())
 dofile ("switch.lua")
 end
>>>>>>> 2ed914fbf125665898a61c0a388ec6b2fa8275e4
 end)
