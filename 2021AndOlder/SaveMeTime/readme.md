So, i'll try and make this a short video, because this was incredibly short make
Although not as short as it should have been - and that is a key point here.

1 Context.

As part of my job, there is a role that cycles through the team, with each team member doing this role for a couple of weeks, before is passes to the next person.
With a dozen people in the team, this means it's your turn every 6 months or so - and the next fortnite is my turn.

Actually I've started slightly early because it's holiday season, but thats by the by.

As always there have been some changes to the process - and I know need to remember and type a 16 character ID all the time - I mean every few minutes, multiple times.
And because of the current remote system restrictions, copy and paste isn't an option - else I could just have solved this in software.

Now, 16 character isn't actually a big deal - except, there is something funny about my keyboard.
It just won't let me type an underscore following by a capital letter. Even just in a text editor, is automatically lowercases the second letter, as if its doing some sort of common error correction.

That hole combination of weird factors just make this process rage enducing.

So late on yesterday, I got so sick of typing and retyping this wretched code, I decided to put togther a quick hardware solution.

2 The build.

I knew I has a spare teensie 3.2 in my parts bin the I recycled from an old project (I mean, talk about standing on the shoulders of giants - Paul Stoffregen, love your hardware and software)

The teensie was already on a chunk of protoboard, so I just needed to solder on a tac switch with a button cap. (Teensie has internal pullups you can enable in software)

Select the 'keyboard' USB-type option in teensieduino and it's a 10 line program to turn the button press into keystroke input as a usb keyboard.

Now until recently, this is the point where my projects would stall. I could spend hours making a bespoke wooden box, or I could order a generic plastic case and drill and dremel holes. But now I have my prusa mini, I can just run off a custom enclosure.

My first revision took 10 minutes to sketch out and then 30 miutes to print - and that should have been the end it. Except I mixed up the direction I did the thin-wall in, so my enclosure's exterior dimensions matched the size of the protoboard, and its interiour dimensions were 1.8mm too small.

So this is one of my new golden rules: 

- Measure twice, print once.

I also decided to make this a push fit enclosure - which works pretty well - but in my first revision I also didn't allow enough clearance for the solder points under the board - which leads to me second new golden rules:

- Always check in assembly view.

So, I ran revision 2 came off the printer first thing this morning, and now I can spend the next 14 days not mistyping this 16 character ID.

Thanks for watching an stay safe.