 r = adc.read(0)
 t = r * 285 / 1024
 print ("Teplota je ",t)
 tmr.alarm(0,30000, 1, function()
 r = adc.read(0)
 t = r * 285 / 1024
 conn=net.createConnection(net.TCP, 0)
 conn:on("receive", function(conn, payload) print(payload) end )
 conn:connect(8080,"192.168.1.230")
 conn:send("GET /json.htm?type=command&param=udevice&idx=1&nvalue=0&svalue=" .. t .. " HTTP/1.1\r\nHost: 10.0.42.13\r\n"
 .."Connection: keep-alive\r\nAccept: */*\r\n\r\n")
 end)
