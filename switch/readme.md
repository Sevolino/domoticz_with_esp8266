<h1>Creating switch for system Domoticz by the using Nodemcu</h1>
This folder describes how to create the bulb switch with Nodemcu
<h2>Meaning of files in this folder</h2>
There are two files:
<ul>
<li> init.lua - setting the WiFi
<li> switch.lua - main file with code
</ul>
<h3>init.lua</h3>
This file is assumed from the page <a href="https://www.domoticz.com/wiki/ESP8266_WiFi_module">ESP8266 Wifi Module</a> at the Domoticz web pages. You have to change here SSID an password of youre WiFi. On the end is calling file switch.lua with your programme. If you would like to change name switch.lua you have to change it here too.
<h3>switch.lua</h3>
This is file with code of youre switch. There are two important variables:
<ul>
<li><code>pin </code> - Which on of pins is connect to the relay, led or etc.
<li><code>status</code> - Boolean variable, which has mean whether switch is on or off
</ul>
<h3>Flashing this files to the Nodemcu</h3>
<p>For flashing this files to the Nodemcu, you need the <a href="https://github.com/4refr0nt/luatool">luatool software</a>. If you have it installed, you can flash the files as:</p>
<code>
sudo python path/to/luatool/luatool.py --port /dev/ttyUSB0 --src /path/to/init.lua --dest init.lua --verbose
</code>
<p>and then the same for the switch.lua. After upload both of the files, you can check its function with screen:</p>
<code>
screen /dev/ttyUSB0 9600
</code>
<p>To watch all from start, the best idea is press the reset button on Nodemcu now. If you have any problem try unplug and plug USB cabel again.</p>

