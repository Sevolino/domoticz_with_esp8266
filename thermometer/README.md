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
<p>In the script <code>init.lua</code> you have to change SSID and Password for your WiFi network</p>
