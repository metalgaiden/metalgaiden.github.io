---
layout: page
title: "Homerun Miko"
permalink: /projects/homerun-miko/
---
Homerun Miko is an isometric action puzzle game about Japanese spirits and baseball.
It was created as part of my senior capstone project at UCSC and involved a team of
10 people and a 9 month development cycle.

My role on this project was as lead designer. I designed and iterated on the gameplay
interactions and puzzle designs, which required coordination with the
programming team and they helped solidify a number of important design decisions.
I also composed all the music for the game.

[Itch.io page](https://chonkershq.itch.io/homerun-miko)

https://youtu.be/pxyQMxoKhJY

## Design
Homerun Miko is a puzzle game, and while what makes a good puzzle game can be hard to define, it boils down to a few main components.
1. The game should teach you as you play. Figuring out mechanics is a large part of the progression the player goes through.

2. The game should explore as much of the possibility space as it can. If the players can easily come up with interactions that you never considered then you left a lot of possibilities on the table.

3. The game should be interesting to explore. The mechanics should be simple but hint at a hidden depth that begs the player to dive in deeper.

While this might be controversial, I don't like to focus on how the player feels in a puzzle game. I don't need to make them feel like they are on an adventure, they ARE on an adventure. At the end of the game they can truly say that they discovered something, even if it was only the interaction of a few simple mechanics.

The primary actions given to the player are a Hit, a Grab, and movement of the player and a secondary spirit character. This, when combined with the obstacles detailed below combined to make 20+ puzzles that all said something interesting about the puzzle space of the game.

The obstacles were based on one of the most basic mechanics in games, collision. This mechanic is often under explored in non-puzzle games, but many puzzle games have pushed it to it's limit. While I don't think Homerun Miko is on par with some of the greats, it does explore collision in a somewhat unique way.

The first and most basic collisions is no collision at all. The floor tiles allow the player, the spirit, and the bunny enemies to traverse with no issues.

Next is that wall tiles, which are the polar opposite of the floor. They block movement from the player, the spirit, and enemies, though thrown enemies will bounce off of them, creating some interesting navigation puzzles.

To round out the objects in the first area we have on/off walls, that toggle between raised and lowered every time you hit an enemy into an altar. This forms the basic gameplay loop of knocking enemies into altars, and then exiting the level through the now open door.

These three elements can go a long way, and I was able to make a good portion of the puzzles with just these, but there are a lot more possibilities to explore.

In the second area you are confronted with water, which allows the spirit to pass through, but not the player. Thrown enemies can also pass over, but falling in resets their position.

In the third area you find a strange mist, that allows the player to walk, but not the spirit. Enemies are unaffected by the mist.

In the last area all these mechanics are blended together, allowing the player to take the simplified lessons learned in the other areas into a few final tests of their abilities.

In my play testing I also noticed a type of collision appear that I had not intended, but that had yet to be explored elsewhere. This was in the form of the altars, which grabbed any enemies that were thrown into them, but only once. In the secret side levels in each area I combined this mechanic with the mechanics of that level to teach the player about how it worked. This culminates in the last side area puzzle, which takes this to an extreme, combining all the mechanics together for one final challenge.

There are probably other combinations of collisions to explore, especially if more and more elements are added on top, but I think this game was a good exploration of the mechanics I found most easily communicated to the player. I am especially proud of the lack of an explicit tutorial. The characters in the game explain some basic movement mechanics, but other than that the actions of the player are mostly suggested through good level design and affordances that the player might already have about how water, or the basics of baseball might work. I surprised myself with how much I got out of the base mechanics and I'm happy with the level of interest that the puzzle game could offer it's players.

## Highlights
Here are a few interesting challenges we faced during the development of Homerun Miko. Below them is a post mortem on the game as a whole.

### Linear algebra to the rescue
At one point during the game's development we ran into an issue bouncing enemies off the walls. What we didn't realize at first was that the isometric perspective impacts these results quite a bit, and it took a fair bit of intuition and critical thinking to get past it.

To start off let me explain the basics of calculating a reflection on a wall from a top down perspective. If you throw an enemy at a wall, it's velocity vector simply needs to be flipped over the normal, which is the line perpindicular to the object surface. In the case of 2D this just means the line perpindicular to the wall line.

<img src="/assets/img/miko/reflection.png" alt="drawing" width="400"/>

If you look at what happens when you try this technique for an isometric level you can start to see where the problems come into play.

<img src="/assets/img/miko/ric_1.png" alt="drawing" width="400"/>

The normal that the wall creates looks a bit wonky, but if you hold your hand up to the monitor you can see that it is technically correct as far as the computer is concerned, but it's not quite where our eye tells us it should be. In this case our brain is filling in the gaps and pretending it's a 3D space, something we'd like the computer to be able to do as well.

<img src="/assets/img/miko/ric_2.png" alt="drawing" width="400"/>

The first thing we tried was to offset the angle by a small amount, so the normal would align where it should, but this doesn't quite work. Not only does it make it possible to get angles that go past the wall, but it also skews all the shots by a fair bit.

<img src="/assets/img/miko/skew.png" alt="drawing" width="400"/>

We also tried to hard code a certain number of input angles and output angles, but it ended up being too specific, since it would need to be done for all walls.

At this point even the teaching team though it may be better to give up, but I wasn't quite ready to throw in the towel. As someone who watches math and science videos for fun, I was reminded of a really helpful 3D animation I had seen that helped me understand linear algebra. Sure enough, his presentation helped me to build my own intuition for how I might apply the math to our project.

https://youtu.be/kYB8IZa5AuE?t=76

The basics of how it applies are as follows: The camera plane at any given time is our x-y coordinate system. When the camera is tilted so that the perspective is isometric the y axis becomes compressed, skewing the results of any physics you might try to compute. By applying a matrix transformation before and after the calculation you can do all the math in the "real world" and come back to the isometric world when you're done.

<img src="/assets/img/miko/cube.gif" alt="drawing" width="400"/>

After consulting with a fellow math nerd we came up with this solution: Basically you start with the normal of the wall and the vector you wish to reflect off the wall. Since this vector is coming from an isometric perspective, you need to translate it into the top down perspective. You achieve this using matrix transformations, simulating the effect of panning the camera plane to face straight down. After transforming the input and normal vectors you can calculate the resulting vector by flipping the transformed vector over the transformed normal. Finally you transform the resulting vector back into the isometric plane using an inverse of the matrix transformations used before.

<img src="/assets/img/miko/formula.jpg" alt="drawing" width="400"/>

There's a bit more to it since the normal had to be flipped by 90 degrees before and after transforming, but once we had the intuition of what to do, the rest came a lot easier.

### Designing in meat space
I tried a lot of technologies to design the levels in this game, but the one that I settled on was to use a board from the game Go and salvaged game pieces from several other games to recreate the levels in 3D.

<img src="/assets/img/miko/board_level.png" alt="drawing" width="400"/>

There's a couple reasons I chose this approach, the first of which being that it's very malleable. If I designed on paper, which I tried for a bit, then my designs would have to be erased and rewritten each time I wanted to move a shrine a little to the left. Maybe I'm just used to working digitally but being able to move stuff around or undo what I just did immediately is a big plus for me.

The other reason is the perspective. When the puzzles are on a grid like they are it would be easy to design them from a straight perspective, but I wanted to see what each level would look like before I sent it off. On the other hand putting it at a slant really messes with how my brain thinks of putting the pieces together. Ultimately I settled on an approach that let me do both, designing on an orthogonal grid and then standing up and tilting the board to see what it would look like in game.

## Post Mortem
Homerun Miko was my first time doing level design, and my first time working on gameplay design for such a big project. It was also unique in the fact that I came to the team after some pre-production had already been done, so I had to fit myself into a preexisting team and figure out what they would need as we went along.

When I first got to the team we didn’t have a designated designer. As a result the game kind of felt like a grab bag of different ideas. There were some puzzles that were a little too simple to really call a puzzle, some ideas about how combat might work, but nothing really cohesive. My first task as a designer was to think about how the combat system might fit in, and I’ll admit I fell into the same sorts of naive design traps. My first foray was a combat system based heavily off of fighting games, a genre that I think really makes each action impactful and that other genres could learn alot from.

Problems started to arise pretty early on, and after a few playtests me and the programming team sat down for a long design discussion about what this game should be. The feedback we got was that the bat was fun to swing… and that’s about it. The other systems were too in depth, especially in an environment where the player isn’t being tested anywhere close to their limit. And the puzzles felt completely disconnected. We were making two games when we weren’t even sure we could make one.

So we simplified, we looked at the verbs that a baseball game with a spirit would have and we worked with just those, only layering on what was absolutely necessary to enhance the experience. We ended up with: Running, Hitting, Pitching, Sliding(which was later removed), and doing the same with the spirit. Then came the big question, which of the two should we focus on, puzzles or combat? With the verbs we had chosen we knew that it needed to have some action component, but on the other hand, my puzzle designs were looking like they could shape into something that had real teeth. We ultimately settled on a hybrid, but one that completely did away with the idea of health bars and damage numbers. The enemies moved around, but only really to serve as an extra layer on top of the puzzles. If you haven’t already, now might be a good time to watch a trailer or get some hands-on experience to understand how the puzzles operate in the final iteration.

So, about these puzzles, they don’t just come out of nowhere, spawned perfectly from the initial mechanics passed onto us by the great all knowing eye. No, instead they needed to be carefully nurtured and developed, with an eye again for player readability. At the time of designing the puzzles I had just started playing The Witness, and to say it had an impact on my designs would probably be an understatement. To preface this I must say that I never considered myself a puzzle game player. I mostly stick to fighting games, creative games, and stealth games. The Witness gave me a solid blueprint for what a puzzle game should even be about, which was indispensable when making this game.

The first and probably most important thing I noticed was that the puzzles in the witness were sequenced. First they start easy, and then gradually build and combine to create increasingly difficult puzzles. The coolest part about it was that you could try to do the last one first, but so much non-verbal information was gained through the previous puzzles that it would be hard to get any traction. I don’t think the game we ended up with is anywhere near as complex as the witness’s puzzles, I aimed for a softer puzzle experience to better fit our target audience who may be there just for the narrative, but in this one aspect I think I did a good job of ramping up the elements in an understandable but still challenging way.

Overall I would say the puzzle design was a success, it didn't end here, there were many tweaks that needed to be done after playtest feedback, but for the most part people were getting the intended experience. One of the things I'm most proud of is the rooms with multiple solutions, allowing more proficient players to access secret areas hidden to most. This allowed me to put puzzles that may have broken the difficulty curve I was going for without cutting it from the game. The difficulty curve I tried to hit was one where the start of any area is relatively easy, ramped up until a fairly hard puzzle then gave a bit of breathing room for the last one. This was a success, though I think I could have included harder puzzles and extended some of the areas by a couple rooms.

{% include open-embed.html %}
