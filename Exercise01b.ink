/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 * Add four more knots (and feel free to change any of the example text, this is YOUR story)
 * Add at least one more conditional
*/

->CAVE_MOUTH

== CAVE_MOUTH ==
You are at the entrance to a cave. {not TORCH_PICKUP:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel.] ->EAST_TUNNEL
+ [Take the west tunnel.] ->WEST_TUNNEL
* [Pick up the torch.] ->TORCH_PICKUP
* [Leave the cave.] ->LEAVE_CAVE

== EAST_TUNNEL ==
You are in the east tunnel. It is very dark, you can't see anything.

* {TORCH_PICKUP} [Light Torch]->EAST_TUNNEL_LIT
+ [GO BACK] ->CAVE_MOUTH
-> END

== WEST_TUNNEL ==
You are in the west tunnel. It is very dark, you can't see anything. 
* {TORCH_PICKUP} [Light Torch]->WEST_TUNNEL_LIT

+ [GO BACK] ->CAVE_MOUTH
-> END

=== TORCH_PICKUP ===
You now have a torch. May it light the way.
* [GO BACK] ->CAVE_MOUTH
-> END

== EAST_TUNNEL_LIT ==
The light of your torch glints off of the thousands of coins in the room.
-> END

== WEST_TUNNEL_LIT ==
As you ignite your torch, you notice etchings carved on the walls, as if they were scribes from a civilization long past.
* [GO BACK] ->CAVE_MOUTH
-> END

== LEAVE_CAVE ==
Are you sure you want to leave?
+ [Leave the cave.] ->ARE_YOU_SURE
+ [GO BACK] ->CAVE_MOUTH

== ARE_YOU_SURE ==
You might miss out on some sweet loot, or even better... an adventure!
+ [I'm leaving the cave.] ->LAME_ENDING
+ [GO BACK] ->CAVE_MOUTH

== LAME_ENDING ==
Alright, fine dude. Your loss. {TORCH_PICKUP: You drop the torch back on the floor, for you have no use for it anymore.} You leave the cave.
-> END

