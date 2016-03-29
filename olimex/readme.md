<h1>Olimex ESP8266-EVB and Domoticz</h1>
<p>In this example is described howto using <a hREf="https://www.olimex.com/Products/IoT/ESP8266-EVB/open-source-hardware">
Olimex ESP8266-EVB </a> as the switch for the Domoticz server</p>
<h2>Preparing the EVB</h2>
<p>It is used the code from <a href="http://www.arduinesp.com/wifiwebserver"> this page. </a> You can use <a href="https://www.arduino.cc/en/Main/Software">
Arduino IDE</a> for uploading this code to EVB. You have to add <a href="https://github.com/esp8266/Arduino">ESP8266 extension for Arduino</a>.
I recommend to use the version 1.6.5 of the Arduino IDE</a></p>
<p>In the script you have to make two changes:</p>
<ul>
<li>Change SSID and password for your WiFi
<li>Change Pin from 2 to 5. (The relay on the Olimex board is connected as the GPIO pin 5)
</ul>
<p>After the correct upload of the code, you have to detect IP address of the EVB.
Then you can check the function of the relay by the connecting to this IP address.</p>
<h2>Preparing Domoticz</h2>
<p>On the Domoticz server you have to create new switch in the virtual dummy device. Give it any name, e.g. "Relay Olimex", set the type as "On/Off" and change the icon to the "Light switch". Then set up the field "On action" as <code>http://ip.switch/LED=ON</code> and the field "Off action" as <code>http://ip.switch/LED=OFF</code>. You have to change <code>ip.switch</code> to the real ip of your switch.</p>
<p>It is all. You can use it now.</p>
