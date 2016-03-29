<h1>Nodemcu and LM35dz as thermometer for Domoticz</p>
<p>For this example you need Nodemcu and thermo sensor (I use LM35dz)</p>
<h2>Preparing the Domoticz server</h2>
<p>On the Domoticz server you have to create new virtual sensor on the dummy device. You have to select type of sensor as "temperatue sensor". Go to the menu Setup/devices and search new added device. You can give it any remembered name. Write down idx of this device.</p>
<h2>Preparing the nodemcu.</h2>
<p>You have two files here:</p>
<ul>
<li>init.lua - Script with initial setting
<li>domoticz.lua - Script which reads temperature from lm35 and send it to the server.
</ul>
<p>In the script <code>init.lua</code> you have to change SSID and Password to your WiFi network real values.</p>
<p>In the script <code>domoticz.lua</code> you have to change minimal two things:</p>
<ul>
<li>Set up the correct IP address of Domoticz server. If you change the default port 8080 on Domoticz, you have to change it here also.
<li>Change IDX to the value which you have writed.
</ul>
<p>Maybe you have to change the formula for the computing of temerature according to your sensor. You have to check its datasheet. For LM35dz which is used here it is <code>t = r * 285 / 1024</code></p>.
<h2>Connecting sensor LM35dz to the Nodemcu</h2>
<p>It is recommended connect the sensor to the unplugged Nodemcu. The LM35dz sensor has three pins. You have to find its function in the datasheet. <a href="http://www.4tronix.co.uk/arduino/pictures/lm35_02a.jpg">Picture</a> is here. Now you have to connect "-" to the GND pin and "+" to the Vin pin on the Nodemcu. You have to use the Vin pin and not the 3V3 because the current 5V is needed for LM35dz sensor. And connect data pin to the A0 pin on the nodemcu. Beware of the mismatch of the + and -, you can destroy the sensor.</p>
<h2>Ending</p>
<p>It is time to the plug on Nodemcu with attached sensor now. On the domoticz server open the web page with this sensor. After a while you can watch the real temperature here.</p>
