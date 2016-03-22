pin = 5
status=0
gpio.mode(pin, gpio.OUTPUT)

sv=net.createServer(net.TCP, 30)   
sv:listen(8888,function(c)
  c:on("receive", function(c,status) 
     status=status*1
     if (status == 1) then
       gpio.write(pin, gpio.HIGH)
     elseif (status == 0) then
       gpio.write(pin, gpio.LOW)
     end
  end)
end)
