                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


https://www.thingiverse.com/thing:2846575
Working 12 hole Soprano Ocarina by Karuuv is licensed under the Creative Commons - Public Domain Dedication license.
http://creativecommons.org/publicdomain/zero/1.0/

# Summary

This is a working, as tuned as I can get it (Breath pressure affects tuning - I have trouble determining if I'm increasing my pressure consistently as I rise in the scale), 12 hole sweet potato/transverse ocarina. 
V13 Sound sample: https://youtu.be/gnLGJigO3q0

High E and F are a bit flat currently. Will be releasing new versions in the future to correct this, hopefully this weekend if I can figure out how to do so without losing the high notes :)

**V17:** High notes seem a bit more stable to me, hopefully it's better for other users as well :)

Remember to **clean out the windway with a safety pin or other small implement after printing.** Any stringing or deposited extra plastic in the windway can weaken the notes, and lose the highest ones. 
It also helps a bit to get as much of the stringing out from the fingerholes and the main chamber.

**I have only printed this model in PLA** - Other users have reported success with ABS but it sounds like it might be a bit more hit or miss.

I hope someone out there enjoys this!

POST PROCESSING:  Clean the windway with a safety pin. I often get one really annoying blob of plastic right in the center towards the windway exit for some reason, and I have to dig it out. Any strings in the windway or across the voicing window can also affect the sound.

Also pull out any stringing you can from the internal chamber of the ocarina, and finger-holes. They do seem to be able to affect that high note a bit, which I honestly didn't expect.

**BLENDER FILES:**
I added the blender files to this make for anyone interested. The ones with "MERGE" in the title have had all the boolean operations completed and should just be the ocarina by itself.
The other two are before the boolean operations, and are the files I modify to change the ocarina. Most of the boolean modifiers are set up already on the main ocarina body mesh, except for the "Boolean - Difference" that cuts out the voicing window. Having that many modifiers on without applying was causing a tiny bit of lag so I decided not to add the last one.

# Print Settings

Printer Brand: Robo 3D
Printer: R1 ABS + PLA Model
Rafts: No
Supports: Yes
Resolution: .2mm
Infill: 10%

Notes: 
- Use at least 3 perimeters - air cannot be allowed to escape into the infill or it probably will lose the high notes, or all notes. 
- Print in either the orientation of the file, or standing on the larger end. 
- Use supports touching the build plate - not internal ones.

- I always need a Brim (I use 1.2mm) for this one as some of the supports are a bit wobbly otherwise and break off.

# How I Designed This

Made in Blender 3D
For every piece of the ocarina, including the negative space (hollow center, fingerholes, etc) I created an object and aligned them. This allows me to easily change dimensions or fingerhole positions without having to modify the vertices and end up with some ugly surfaces as a result.

Once I'm happy with my edits, I use boolean operations to merge or remove the pieces from the mesh, and it ends up mostly as you see here. I do a few quick manual smoothings just to make myself happy, though.


I really like the way it all worked out, and will probably do that again when I move onto making dual chambered ocarinas.

![Alt text](https://cdn.thingiverse.com/assets/ee/3e/18/63/10/Capture.PNG)