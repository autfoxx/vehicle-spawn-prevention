Made by AutFox 

Support: https://discord.gg/4PfmsPmN4k

Socials: https://linktr.ee/autfox

Buy me a coffee: https://ko-fi.com/autfox

----------------------------------------------------------------------------

This script is a vehicle spawn prevention / blacklist. 

This script is standalone and open source. 
You are welcome to use this in yours server, but you are NOT allowed to 
resell, distrubute or charge any type of donation/payment for ANYTHING related to this script. Including development fees for players within a server to get a private vehicle blacklist zone added to their area/house/MLO/store etc.

You are allowed to make changes to the script, but you are not allowed to claim the script as yours, even with adjustments made to it.

----------------------------------------------------------------------------


#installation Guide: 

1. Download the script from my github: https://github.com/autfoxx/vehicle-spawn-prevention

2. Un-zip the file and drag it into your servers "Standalone" folder.

3. Remove "-main" from the folders name, It should be named just "autfox-vehiclespawn-prevention"

4. Go to your server.cfg and type "ensure autfox-vehiclespawn-prevention" and save

5. Now go back into the script and change line 4 in "config.lua" to the correct vector3 cordinates for the zone. 

6. Go into the "client.lua" and make sure the vehicles you wish to be blacklisted are listed at the top. (Line: 3-6, if you wish to add more, please follow the same format. You can add as many vehicles as you wish.)

7. Save and now restart the server.


----------------------------------------------------------------------------

To add more zones follow this template: 

    {
        coords = vector3(0.0, 0.0, 0.0), -- Change these coordinates
        radius = 100.0 -- Change radius in meters
    }


----------------------------------------------------------------------------

To add more vehicles to the list of blacklisted vehicle follow this template:

    `vehiclespawncode`,
    `vehiclespawncode2`, 
    `vehiclespawncode3`,
    `vehiclespawncode4` 
