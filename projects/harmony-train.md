---
layout: page
title: "Harmony Train"
permalink: /projects/harmony-train/
---
An experiment in educational game design

Harmony train is a prototype card game that attempts to teach music theory by using the game mechanics and affordances directly. Before diving into its design specifically I would like to start by laying out the approaches I see other games take in the field, and the reasons why I feel the need to diverge in my approach.

[Itch.io page](https://alterlearning.itch.io/harmony-train)

## Virtual museums

This type of game is the most common one that I see. It involves a virtual space (2D, 3D, VR, etc.) where most of the educational content is presented as text, sometimes with some accompanying visuals. Often the virtual space is themed to match the subject material, and sometimes there is some gameplay to tie the material together. 

The main problem I have with this kind of edu-game is that it mismatches the mediums of games and text. The types of things that make a good textbook don’t translate over to a good edu-game. When there is gameplay in between the text players are likely to skip the text portions to get to the “good part”. This is a serious problem, as the player is often not getting much instructional value from the gameplay sections of these kinds of games, and would be better served reading the material on their own and playing a game they enjoy more some other time.

Ultimately I think trying to use these games as educational material is a bit like asking a kid to read a textbook underwater. Sure, diving underwater is interesting, but it doesn’t add anything to the reading experience and ultimately distracts from the main focus of that type of instruction. 

## Physically accurate simulations

The next type of edu-game I see is a type of simulation. When I say simulation here I mean a collection of rules that the computer processes in a way that represents some real or hypothetical scenario. Often educational simulations focus on accuracy first, and try to teach the player about physics, global warming, biology, or other natural systems by replicating their behavior as accurately as possible.

I think this is a better approach than a virtual museum, but it also has a problem with medium translation. Simulations and games are not the same thing, though they appear very similar. In fact, most games are also simulations, but not all simulations are games. The difference is in “affordances” which are the ways a game suggests and allows player interactivity. 

Think about a simulated fish tank. The player is given a slider that raises and lowers the water level, but is not given any other controls. In this case the simulation could be quite complex, but the effective “resolution” of the game is limited by the affordances the player has access to. It’s my personal belief that the “suggestion” aspect of affordances is more important than what the player is allowed to do. This is because it’s the aspect most directly linked with player knowledge of the game systems. Either way the ability of a simulation to actually teach something to the player is directly linked to how much resolution the affordances offer the player, and therefore how game-like the simulation is.

Now that the problem has been better specified we might ask how to make the best simulation-like game to teach the player. The answer is not to increase the simulation resolution to be as accurate as possible, but rather to increase the affordance resolution. This often, but not always, comes at the cost of simulation resolution. 

One final example to show what I mean: Imagine the fishtank from before, but the player is playing as a fish instead of moving a slider. In order to allow the player to play as a fish, its action set would have to be simplified (provided it was hyper-realistic before). While the fish is now composed of a small set of player actions, this gives the player more control over the fish, and thus, more influence over the simulation. The player is also in a position where behaviors could be suggested like eating other fish when you are hungry or hiding when a larger fish is nearby. For the sake of example let us assume that these behaviors are simplified and not very realistic. I would still argue that the player is still getting more out of the game since the game’s affordance resolution is much larger than before.

## Back to Harmony Train:

It was this question, about how to represent a complex real world simulation in the form of a game that drove most of the design work on harmony train. Harmony train is, as you might expect, about the concept of harmony in music. Why some chord progressions sound a certain way is a large and complicated topic that spans from geometric ratios to psycho-acoustic phenomena. I started by asking what such a simulation would look like, if it did exist. In my research I talked to multiple music theory experts and came up with a model that, while not fully representative of all music theory, could still explain a good portion of at least the European harmonic tradition. I will dive into more detail about this system later, but for now it’s basically just looking for chords to fit the “circle of fifths” pattern that is commonly found in contemporary music theory.

Once again I have to be careful though, since my goal isn’t just to plop a simulation on my audience’s lap and hope it filters into their brains through osmosis. The next step was to build out affordances for the underlying system so the players could use them as a window into the underlying systems. I started with a simple card game that was scored based on the “circle of fifths” algorithm I created. This was a good start, but it initially had now working sound so players were largely just working on trial and error. This is where the “suggestion” aspect comes into play.

Through a process of trial, error, and a lot of playtesting, I came up with 3 main strategies for my players to use to better understand the algorithm. 

The first strategy is both the most simple, and the one with the most promise: listening to the chords as they are played. Adding in chord sounds when each card gets played made a huge difference on how people played the game, and many people ignored all the other directions the game told them just to put together what they thought sounded good. This is a great starting point, but on its own it lacks a little direction for those who haven’t spent much time listening closely to music. 

The next strategy was to add a visual indication on the cards of which cards they would match well with. This took the form of shapes on the cards that seemed to match up with other shapes to the left and right. You can imagine these like puzzle pieces where the cards that work together harmonically also have shapes that fit each other. For most players this was the first clue they noticed, and worked well for the first few cards the player has access to. The important thing about this indicator is that it becomes increasingly less useful as a heuristic as the game goes on. So, while players may latch on to it early as a starting point, they will need to rely on the other two strategies to get further in.

The last strategy was for players to look at the chord notation on the top left, or the number in the middle of the card to count how much each chord moves from the previous chord. This strategy requires a bit of startup knowledge about what the letters mean in music notation, and that it loops back around at an octave, but it’s probably the closest strategy to figuring out the explicit scoring system of the game. In my observations of players, they commonly tried this strategy after building up a base of examples from the first and second strategies, but more experienced players who knew a thing or two about music theory tried this strategy much earlier in their playthrough. 

These three strategies, and any future strategies I build into the base game, form the window that the player uses to look at the underlying algorithm. The game is as interesting and as deep as these strategies are, no more, no less. The question is: Are they enough to teach the player about music theory?

I think the answer depends on what you mean by teaching music theory. Will the player know all the terminology that a professional musician or academic would know? Probably not, and that is a fair criticism of the game. I think a lot of what we use the current educational system for is giving us labels that we can use to communicate our ideas to each other. I think this is precisely where traditional education and games education should differ. Games have the ability to guide us to the experiences that we use those labels to describe. If I explain the color red to you, it probably won’t mean anything until after you have already seen something red before. With more complicated topics it’s often a combination of experiences that you put together into a single label. The hope would be that games like harmony train would form an experiential glue for labels to be stuck to after the fact, in an environment more conducive to that kind of instruction.

I would like to close off this exploration with my call for a third category of educational games: The affordance focused simulation. The idea is simple, but deceptively hard to execute. You simply need to create a simulation that both represents some important facet of the real world that you would like to convey, as well as allowing the player enough affordances to be able to understand and manipulate the simulation. This will likely require both good and intentional design, as well as a solid understanding of the education material, and which aspects of it would be well suited to a game environment.

## A detailed account of the algorithm

While this is spoilers for the game in some respects I figured some people would be curious what the algorithm for harmony train is actually measuring, so I'll go over the broad strokes here. The system basically takes two chords, placed next to each other, and checks if they are the same, different, or "progressive". Here "progressive" means that the chord would be likely to go next in a typical progression.

First the algorithm checks if the chords are the same. This would mean that they are composed of the same notes, ie A = A, even if one is A4 and the other is A5 (A4 and A5 refer to the position of the note on a keyboard. A5 is one octave higher than A4).

The algorithm also checks if they are “close enough” where “close enough” means that they could be substituted for each other without a huge difference in sound. This is explicitly defined as having 2 out of the 3 main notes in the chord in common, with a caveat for chords that contain a note a 3rd below the root they substitute. (If this is hard to understand, just stick with “close enough”. I had a hard time understanding it as well).

After the sameness check the algorithm will look for the progressiveness of the two chords. This is based on a concept in music called the circle of fifths. Basically a fifth in music is a nice ratio that we like to hear, and chords where the root moves this distance each transition sound good (it’s arguable that “good” here could just mean a conformation to western music theory).

Once again the algorithm will look for substitutions that are close enough, but instead of comparing them to the base chord, they look at the target chord a fifth down from that chord. This is one of the most important steps, as movements like up a 2nd or down a 3rd can be built from substitutions of normal circle of fifths movements. 

If this makes absolutely no sense to you at all, try playing the game first, then come back to this explanation. It will still probably be confusing, but you might have a few more experiential tools to help you understand what I’m getting at.

{% include open-embed.html %}
