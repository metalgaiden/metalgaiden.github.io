---
layout: page
title: "Choke Slam"
permalink: /projects/choke-slam/
---
Choke Slam is a one-on-one fighting game with a unique focus on vertical gameplay.
It was created with my team of 5 dedicated people as our first ambitious project outside of game jams.
Most of the coding, music, and visuals in this game were created in a 3 week period in order to deliver on the proof of concept.

I filled a number of roles for this project, taking the lead on both the design and programming, as well as covering sound design and music.
Wearing so many hats can be overwhelming, but the creative control allowed me to take risks and iterate faster than any of my previous projects.

<iframe src="https://itch.io/embed/1698283?linkback=true&amp;bg_color=f7ccc5&amp;fg_color=222222&amp;link_color=7e10dc&amp;border_color=8d3ac7" width="552" height="167" frameborder="0"><a href="https://chonkershq.itch.io/chokeslam">Choke Slam by Chonkers HQ</a></iframe>

<br/>

https://youtu.be/iq-3eFvHILg

## Game Balance
The idea for Choke Slam was inspired by a match of Melty Blood: Type Lumina.
The game had an uncharacteristic focus on air combat and allowed the players a lot of air mobility options.
I thought about what would happen if you removed many of the air mobility limitations and allowed players to go as high as they want, and thus Choke Slam was born.

The first design challenge I encountered was to ask why the players would bother going up in the first place.
In a traditional fighting game like street fighter, the most interesting distance is just at the edge of each player's range.
Getting players to want to move there is simple: reward them for being able to punish whiffed moves from their opponent.
Here is a brief primer on whiff punishes for those unfamiliar with fighting games.

[https://fightinggameguide.com/whiffpunish.html](https://fightinggameguide.com/whiffpunish.html)

I wanted to design the mechanics of Choke Slam to reward you for being above your opponent, but punish you if you got too far above them, creating a sweet spot just above your opponent.
To do so, I gave each player 3 possible actions: Jump, Shoot and Grapple.

Jumping allows you to gain height on your opponent, and it's also the best defensive action you can take to avoid being shot.

<img src="/assets/img/chokeslam/jump.gif" alt="drawing" height="400"/>

Shooting allows you to do small amounts of damage to your opponent, provided you are above them at the time.
With just these two actions it's a game of racing to higher ground to pepper your opponent with shots.

<img src="/assets/img/chokeslam/shoot.gif" alt="drawing" height="400"/>

Grapple completes the package, allowing you to slam your opponent to the ground, dealing damage based on the height you drop them from.
In contrast to Shooting, you can only grapple if you are below your opponent.

<img src="/assets/img/chokeslam/grapple.gif" alt="drawing" height="400"/>

The relationship between these abilities is similar to rock paper scissors, but it's closer relative is the game [Standoff](https://www.ludocity.org/wiki/Standoff_%28hand_game%29).
The end result of these mechanics is that you want to be just above your opponent so that you can shoot them until they jump to dodge, where you can then switch to grappling.
Because of the quick timing of each move, you'll have to predict when the opponent will jump past you, and that's where the mind games begin.

I created this diagram to show the artist the specific timing of all of the animations. Having these specified beforehand made development a lot smoother.

<img src="/assets/img/chokeslam/animations.png" alt="drawing" height="400"/>

### Predictive aiming
In order to make this game work with controllers, the standard way to play most fighting games, I had to get creative with the aiming system.
I chose to try implementing an auto aim feature that took into account the other player's velocity when you aim at them, so that you will catch them if they keep going that direction.
Lets take a look at how shooting was implemented, as it's mostly the same story for grappling.

The first step is to check if the other player is below you, but since it takes time to shoot you have to predict if they will be below you at the time you release your shot.
Below is a diagram of the timing of each shoot action.

<img src="/assets/img/chokeslam/frame-data.png" alt="drawing" height="200"/>

The numbers on the top of the bar represent the current frame (out of 60 fps).
The move starts at frame 0, has an active hitbox from frames 10-15 and stops you from performing any other action until frame 35.

The prediction starts on frame 0.
It has to take into account the opponent's current move first, since some moves don't have gravity applied to them.
If the current move stops free-fall, then it must lookup how much time is left and calculate the drop from whatever time is left over.
Once it has made this prediction, it spends the next 10 frames animating and rotating the character to aim at that predicted spot.
At 10 Frames, the player character has reached the predicted spot and shoots a projectile at it for 5 frames.
At 15 Frames, the player stops shooting and begins to rotate back to their default rotation.

The key point this adds to strategy is that the prediction does not account for any additional moves performed in the 10 frame startup window.
This means you can perform an action such as a jump during this time, forcing your opponent to miss.

## Adaptive Music
Because Choke slam is a vertical game, and the height the players are at changes the gameplay significantly, I wanted to make music that changed with the height as well.

In my research I found that most dynamic music revolves around layering "stems".
A stem is a part of a musical composition.
The drums, for example, could be a stem separated from the guitar, which has it's own stem.

The two main methods I found for layering these stems were vertical and horizontal layering.

Vertical layering involves playing all stems together, but fading in and out sections as is relevant.
I used vertical layering to make the guitar, choir, and strings fade in and out depending on how high you were in the match.
Here is what it sounds like to go to the top and come back with only these elements enabled:

/assets/audio/vertical-fades.wav

Horizontal layering is when you transition from one stem to the next, usually at the end of a measure.
I used horizontal layering to raise the intensity of the drum section as the match progressed, waiting until the end of the current drum loop to start the next:

/assets/audio/drums-evolution.wav

I also made the bassline change intensity depending on how high you were in the map, but did not force the change until the current bass line ended:

/assets/audio/bass-evolution.wav

And here's what it sounds like all together:

/assets/audio/chokeslam.wav

{% include open-embed.html %}
