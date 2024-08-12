@echo off

:: Connects VPN
rasdial "VPN-NAME-HERE" "<vpnusername>" "<vpnpassword>"

:: Connects RDP
cmdkey /generic:TERMSRV/IP-Adress-Of-RDP-Session /user:"<ADuser>" /pass:"<ADpass>"
mstsc /v:IP-Adress-Of-RDP-Session

:: Disconects VPN Once RDP Session Is Closed
rasdial "VPN-NAM-HEREE" /disconnect
