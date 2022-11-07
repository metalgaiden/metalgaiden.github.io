---
layout: page
title: "Gordian"
permalink: /projects/gordian/
---
Taking inspiration from The Witness, Braid, Tunic, and many other great games, Gordian is a finely crafted puzzle game full of tricks and secrets.

The goal of the game is to help players learn about topology in a fun way by exploring the rule set Gordian uses to represent it.

This project was made for the 2022 Project Revival Jam 2 and received [1st place in the Reason category](https://itch.io/jam/revival-jam-2/results/reason-).

<iframe src="https://itch.io/embed/1759770?linkback=true&amp;bg_color=9a9da0&amp;fg_color=1a1d20&amp;link_color=fcb75a&amp;border_color=84898d" width="552" height="167" frameborder="0"><a href="https://chonkershq.itch.io/gordian">Gordian by Chonkers HQ</a></iframe>

<a href="#design"></a>
## Design
This game took on a lot of iterations before arriving at the current version. It started as a physics platform in need of a knot tying system, only for me to realize that a knot tying system had more than enough complexity for it's own game.

I started coming up with the knot tying system on organic chemistry graph paper, since it's a bunch of hexagons. I too an idea from Magnum Opus, where you try to make the machines as small as possible. Me and my friend would often compete with each other to make it smaller and smaller and the idea fit surprisingly well with Gordian.

<img src="/assets/img/gordian/twist.jpg" alt="drawing" height="400"/>

I already knew a lot of knots, as I've spent a lot of time rock and tree climbing. When trying the knots I already knew I found that I was constantly making new discoveries about the system.

<img src="/assets/img/gordian/climbing.jpg" alt="drawing" height="400"/>

When tying an overhand I learned that you always need to leave a space when you need to go over and then under, and when tying the bowline I realized that tying it from the other end made much smaller sizes possible.

<img src="/assets/img/gordian/overhand.jpg" alt="drawing" height="400"/>

Taking inspiration from the puzzle games I already love I decided to focus the knots I picked to exemplify these discoveries.

In order to include knots that aren't traditional knots I decided to start messing with the affordances. This allowed me to justify strange knot topologies, and let me show off some of the most interesting knot puzzles I could find. Some of these knots can be found below in the art section.

<a href="#programming"></a>
## Programming
There were several programming challenges I faced when working on Gordian, but the first and most pressing issue was how to recognize knots. Obviously knots are 3 dimensional objects, but in the field of topology they commonly represent knots with 2 dimensional diagrams that show the positions of crosses over and under.

<img src="/assets/img/gordian/trefoil.png" alt="drawing" height="400"/>

As with most programming challenges my first instinct was to do the brute force solution, track the overs and unders that the rope does and match them to a database of known knots. I quickly found some problems with this solution.

For starters I needed to index the over unders and record the point that I was crossing, without this you could easily create false positives with a series of carefully selected twists. Once I indexed the crossing point I started reduce the amount of information I was storing as much as possible.

To read more about this process I would look at the writeup I did on the knot detection system here: [MUNCK](https://docs.google.com/document/d/12isSWXShy_WF7h9Zc-I2DHJOmNN-t_tfV2iYJuIETSs/edit?usp=sharing)

After dealing with knot detection, the next challenge I faced was saving this data in the game. Not only would I be saving the player's progress, but I also wanted to make put all of the knot data in once place so I could change it there and have those changes propagate across the entire game. Below is a diagram describing my data storage design.

<img src="/assets/img/gordian/data.png" alt="drawing" height="400"/>

<a href="#sound"></a>
## Sound
Sound is probably the first thing you notice when you open a game and I wanted to make sure the sound design was as polished and unobtrusive as possible to make sure players are willing to spend time and effort exploring my systems.

The music is pretty simple. It layers sound ocean sounds, strings, and synth bells that remind me of Blade Runner. The only thing that's special with the music is that it runs backwards when you undo your moves.

/assets/audio/gordian/gordian.wav

Once again I'm trying to keep it pretty simple. The solution to allow the music to run backwards was just to have two versions of the main song, one forward and one backwards. When you press the undo key it will play the backwards version at "full song length" - "current song position". I also added a bit of buffer to make sure the player couldn't freeze up the music. It sounds cool, but was just a little too distracting.

/assets/audio/gordian/gordian-reversed.wav

Another thing I noticed in designing the music was that the strings and ocean sounds were almost impossible to tell when they were reversed, this means that you won't notice the reversing music until at least a good ways in. It's this kind of subtlety that games like this need, in order to turn the volume down on everything non essential.

For sound design my process was to add simple sounds to as many places as possible, to maximize the amount of information conveyed. Each sound was a collection of 2-3 sound files, picked at random and pitched slightly up or down.

Sounds play for placing rope, undoing placements, tying a knot, tightening a knot, leveling up and clicking on UI. The sound for tying a knot is layered to be hidden if you also tighten a knot, but is noticeable enough to clue players in if they tie a knot they have done before.

<a href="#art"></a>
## Art
When starting work on the game I wanted to bring the art in pretty late in the process. Because of the design of the puzzles I had to have a very clear idea of what I needed before the first puzzle frame was drawn.

I started the process with UI Diagrams, showing how the game would work in as much detail as possible.

<img src="/assets/img/gordian/ui_diagram.png" alt="drawing" height="400"/>

After making these diagrams the next step was to put them in, programmer art and all. My first iteration of knot diagrams were simple, but still conveyed the essential information, enough for me to get a lot of good playtesting so I could add or remove knots as needed.

Once I was pretty confident in my design work I went to an artist and iterated on each one to make sure it has all of the required information while also fitting in with the game's themes. For each and every frame we had to go back and forth several times to fine tune the discoverability of all the secrets. Below is the evolution of several knot designs.

<img src="/assets/img/gordian/default_knots.png" alt="drawing" height="400"/>
<img src="/assets/img/gordian/f8.png" alt="drawing" height="400"/>

<img src="/assets/img/gordian/over_under_draft_1.png" alt="drawing" height="400"/>
<img src="/assets/img/gordian/over_under.png" alt="drawing" height="400"/>

<img src="/assets/img/gordian/waterfall_draft_1.png" alt="drawing" height="400"/>
<img src="/assets/img/gordian/waterfall_draft_2.png" alt="drawing" height="400"/>
<img src="/assets/img/gordian/waterfall.png" alt="drawing" height="400"/>

<img src="/assets/img/gordian/shadow_draft_1.png" alt="drawing" height="400"/>
<img src="/assets/img/gordian/shadow_draft_2.png" alt="drawing" height="400"/>
<img src="/assets/img/gordian/shadow_draft_3.png" alt="drawing" height="400"/>
<img src="/assets/img/gordian/shadow.png" alt="drawing" height="400"/>


{% include open-embed.html %}
