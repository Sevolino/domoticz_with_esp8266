<h1>Creating switch for system Domoticz by the using Nodemcu</h1>
This folder describes how to create the switch with the Nodemcu
<h2>Meaning of files in this folder</h2>
<p>There are three files:</p>
<ul>
<li> init.lua - Script which is loading as default and which sets the WiFi and loads the next script
<li> switch.lua - Script includes main part of the code
<li> script_device_nodemcu.lua - This script is placed on Domoticz server and it is used to communication between Domoticz and Nodemcu.
</ul>
<h3>init.lua</h3>
<p>This file is assumed from the page <a href="https://www.domoticz.com/wiki/ESP8266_WiFi_module">ESP8266 Wifi Module</a> at the Domoticz web pages. You have to change here SSID an password of youre WiFi. It is loading script switch.lua with your programme at the end. If you would like to change name switch.lua you have to change it here too.</p>
<h3>switch.lua</h3>
<p>This is file with code of youre switch. There are two important variables:</p>
<ul>
<li><code>pin </code> - Which of the pins is connect to the relay, led or etc.
<li><code>status</code> - Boolean variable, which has mean whether switch is on or off
</ul>
<p>You can set the correct PIN on the Nodemcu from <a href="http://www.cnx-software.com/2015/04/18/nodemcu-is-both-a-breadboard-friendly-esp8266-wi-fi-board-and-a-lua-based-firmware/">this page</a></p>
<h3>Flashing this files to the Nodemcu</h3>
<h4>Linux and OS X</h4>
<p>For flashing this files to the Nodemcu, you need the <a href="https://github.com/4refr0nt/luatool">luatool software</a>. If you have it installed, you can flash the files as:</p>
<code>
sudo python path/to/luatool/luatool.py --port /dev/ttyUSB0 --src /path/to/init.lua --dest init.lua --verbose
</code>
<p>and then use the same for the switch.lua. After uploading both of the files, you can check its function by the program screen:</p>
<code>
screen /dev/ttyUSB0 9600
</code>
<p>The best idea to check all from start is pressing the reset button on Nodemcu now. If you have any problem try unplug and plug USB cabel again. Remember the IP adres, which is shown</p>
<Windows>
<p>You can use <a href="http://benlo.com/esp8266/">LuaLOader</a> for uploading both of the files.
<h3>Preparing Domoticz server</h3>
<p>On the Domoticz server go to the list of devices and select any virtual device (if you haven't any yet, you have to prepare any). You have to create new virtual sensor, then you select its type as a switch. Give it name e.g. "nodemcu".</p>
<p>Now you have to upload file script_device_nodemcu.lua into server with domoticz. You have to put it in folder domoticz into the subfolder <code>scripts/lua</code>. You have to change IP address of Nodemcu and name of the switch.</p>
<p>If everything is correct, switch can function now</p>
