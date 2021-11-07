---
layout: page
title: "Epistagraph"
permalink: /projects/epistagraph/
---
Epistagraph is a tool for designing and diagnosing knowledge based progression systems.
It allows you understand the flow of information if your game as well as designing secrets and puzzles that are dynamic and intuitive.
It can be found on github [here](https://github.com/metalgaiden/epistagraph).

First of all we might want to nail down what a progression system is in games.
The most common form we find I will dub "extrinsic progression".
This encompasses all the progression elements the game provides, such as leveling, gear, skill trees, resources and so on.
This is in contrast to "intrinsic progression", which is progression that happens to the player rather than the game.
While both of these progression systems can be important, I would like to focus on intrinsic progression, as I feel it's somewhat missing from our design language.

The most common form of intrinsic progression we see in games is skill based progression.
Even if a player gets no better gear in playing a game, their skill will have improved, and thus they will have progressed, either in power or some other metric unique to the game at hand.
This form of progression has largely been accepted in gaming today, and we even have formal tools to help us balance games around it.
While you might not be able to adjust the "experience" gained as a player levels up their skill, we can still use statistical tools and ELO rating systems to measure where the player is at.

But there is another form of intrinsic progression, one that rarely gets talked about and has little to no tools of analysis when it comes to design.
That is the progression of player knowledge.
I exaggerate a little, philosophers have been debating this progression system and our position on it for centuries.
It's just now that we game designers get to join in on the fun.

So let's examine knowledge based progression and how it differs from skill based progression.
Let's imagine a chess game between two grand masters.
Both have equal skill in the sport, but for one of these players we remove his knowledge of chess openings.
This player would be at a severe disadvantage.
While he might be able to intuit a large amount of the best moves, he will simply not know about traps and gambits that may affect him further down the line.

It's the same way with video games, those who know more intimately how the system works will be better off, or in other words, more progressed.
Furthermore, this progression is not due solely to skill, even if the learning required to get there was a skill in and of itself.
Even if the idea of a "knowledge check" in a game sounds inherently un-fun, it's important to understand the process that creates them, so that we might avoid making them unnecessary or unreasonable.

And that's where this tool comes in handy.
You can basically use it to map out how and where your player might acquire knowledge, and where that knowledge will be applied or tested later.
Let's move away from the abstract and into examples.
Here is an example of the industry standard text popup tutorials we see in many games nowadays.

[Tutorial Graph](/assets/godot/tutorial/Epistagraph.html){:target="blank"}

There are two main takeaways from seeing the player learning visualized like this.
The first is the structure of the puzzles and information flow.
From the graph we can see that the progression of knowledge is quite linear, each level teaching a new mechanic and then moving on to the next.
As we will see later this can be changed to make lots of different configurations, and is often tied in heavily with the level design, especially in more open ended games.
The more complex this web of connections is, the more complicated your knowledge progression system is likely to be, so keep that in mind and make sure to allow lots of different sources of the same knowledge if your game is big and it's not likely the player will see all of it in one go.

The other thing to take note of is the "knowledge required:" field, and how some of them say things like "general: ..." and have no connection attached.
These are known as entry points, and point out pieces of information your player will be expected to know from outside the game or area you are analyzing.
This is important, as players will want to apply what they know in the real world to the game, but it comes at the cost of potentially losing players with different starting information.
An example of this can be found in the early puzzle design of Zork, which has a puzzle that requires knowledge of baseball, something players of a fantasy role playing game are likely to be confused by.

As you can see, the learning in this example is not very interestingly integrated into the game flow.
The player plays a level, then is told about a mechanic for the upcoming level before they have a chance to see it for themselves.
For linear games this can be fixed fairly easily with a more interactive tutorial, like by showing the mechanic affecting an npc or by allowing player experimentation in a safe environment, but for more open ended games this might not be an option.
Let's look at the structure of puzzle knowledge in a game like The Witness.

[Witness Graph](/assets/godot/witness/Epistagraph.html){:target="blank"}

This is, of course, a very zoomed out look at the knowledge flow in the game, but provides an interesting look at an intended experience the designer put in.
As you can see the town in the middle, which is accessible and often arrived to early in the game, has the most knowledge requirements of any area in the game.
This means that the player is likely to learn early on that they sometimes have to leave a puzzle and come back to solve it later.
A similar process happens even at a smaller scale, let's take a look at a single area in The Witness, though I will remain vague so as to not ruin the experience for new players.

[Witness Desert Graph](/assets/godot/witness_desert/Epistagraph.html){:target="blank"}

The key thing to point out here is that the "outside: secrets" knowledge is likely to be the deciding factor in if they solve the secret puzzles of the desert.
That being the case we might notice a similar narrative from before forming, where the player is confronted with artifacts of a puzzle they don't quite have the knowledge for, then they come back later and are struck at how many clues were there the whole time.
It reminds me a lot of murder mysteries, which don't necessarily care if you solve them, just that once the answer is revealed you will appreciate the foreshadowing that went into the first half of the story.

This tool really comes into it's own when analyzing secrets and easter eggs though, as it gives you a good idea of how obtuse your secret is to find.
For some designers the goal might be for every player to find their secret, while other designers may wish for a community effort to be necessary for it's discovery.
These community type secrets are sometimes called ARGs or Augmented Reality Games, and often involve player involvement outside the game itself.
Let's look at an individual player focused secret/easter egg sequence in the physics based Rogue-lite Noita, a game well know for obtuse but interesting secrets in it's unusually vast map.
Again, the goal with this secret is for players to find it on their own, even if it takes them a while to do so.

[Noita Graph](/assets/godot/noita_secret/Epistagraph.html){:target="blank"}

Using this tool we can notice some of the pain points of a secret like this and, if players discovering this on their own is a goal of ours, find ways to onboard players who might feel lost.
The first thing I noticed was the interaction with a system outside of the secret itself.
The broken wand is an unrelated item, but it does teach the player to hold on to broken items, and if they figure out the wand, the affordances of that item transfer to any items with the "broken" label.
The real pain point comes in the form of the anvil location and the required biome for each step in the chain.
For the anvil location I think it's fine to have the player explore and find it on their own, but the room itself should probably be more prominent, and hint to the player that broken items can be taken there.
Perhaps this could be done by matching the visual effect we see on broken wands to something in the anvil room.
The biome requirement is less egregious, but still important.
I would likely solve it by adding item description text that beckoned the player to explore "a little further down" so that they have a general idea of where to expect the next event in the chain to happen.

So we’ve seen what the tool can do, but you may be asking exactly what it’s all for.
Well in a nutshell it can be used to target an area of your game that is missing tutorialization or expects too much of your players.
I would say that it’s more useful as a proof of concept though.
It’s not too hard to keep a rough idea of what your knowledge map looks like in your head and most pain points will come up in playtesting.
The hard part is targeting what to fix after seeing what the playtesters are struggling with, and I think just having an understanding of how knowledge flows in your game should be enough to work through any problems.
I myself think it will be particularly useful for mapping out ARGs or secrets in games, as it’s very easy to get in a habit of making a linear sequence if you don’t plan from the start, and adding in branching paths and red herrings adds a lot of interest to a secret or ARG if done well.

In fact, while working on this project I decided to make a short ARG style puzzle myself involving 3 images and a text file.
From the short playtests I've done I would say it's pretty hard, but if you keep in mind the mental map of inputs and outputs of player knowledge you might be able to find the password.

<img src="/assets/img/epistagraph/word_search.png" alt="drawing" width="400"/>

<img src="/assets/img/epistagraph/pic.png" alt="drawing" width="400"/>

<img src="/assets/img/epistagraph/crossword.png" alt="drawing" width="400"/>

[Clues.txt](/assets/img/epistagraph/clues.txt){:target="blank"}

If you're stumped about where to start I would go with the word search, then think about how your answers to each puzzle could be used to solve another one.

I designed this puzzle system using this tool, so here is my mapping of the puzzle before I started working on the details of each element.

[Word Search Graph](/assets/godot/word_search/Epistagraph.html){:target="blank"}

While this puzzle is somehow both abstract and literal about it's interpretation of knowledge based progression, it serves as a good example of the kinds of looping and double backing we see is so common in other systems.
The major difference being that each piece of knowledge the player collects really is unique and can't be recycled infinitely, at least not in any game I've seen yet.

There are also a number of adjacent technologies that the astute among you might be dying to tell me about, so let me address the ones I’m already aware of. First up is the idea of a concept map, which is basically a diagram that shows information dependencies. An example might be a diagram of all the knowledge needed to pass a physics course, with many of the nodes needing information from another node, creating a hierarchy of information. This is pretty close to what I’ve done, but it doesn’t take into account breakpoints where outside knowledge is used, and also doesn’t separate the knowledge itself from the thing that creates it, which in the case of a puzzle is an important distinction. Two puzzles, or even a puzzle and some other experience like an object the player notices in the world, can both contribute to the same knowledge input.

Another more game related piece of tech is the tool Skill Atoms. This is also pretty close, but instead of focusing on the meta structure of full puzzles, it goes as granular as possible. While this can result in some really cool ideas for emergent gameplay, it takes more complex puzzles that are typically seen in ARG type games off the table. Something like a code that the player uses later in the game doesn’t map well onto skill atoms, it’s still a great tool for skill based progression though.

It does open up an interesting argument about skill based progression as opposed to knowledge based progression. I think that these two are often more similar than they first appear. Skill is the process the player does to achieve an outcome in the game, whereas knowledge is a thing the player can gain by doing a sort of epistemic process. In both cases the process is what we should focus on and analyze, the main difference being that the knowledge process is much easier to “cheat” and find a solution online. For competitive games you may just need to accept that the media landscape is better equipped to communicate effectively to the playerbase, but even in those cases we can hope to learn what makes them successful and apply them to our designs.

Finally we have Machinations, a favorite of systems based designers. The problem here, and it’s probably already obvious, is that you can’t just shuffle around and trade information. It’s in the player’s head and unless we start really ramping up what DRM is allowed to do we can’t exactly take it back out. It does well with more traditional economies and system loops. Definitely a good tool when your inputs and outputs are more concrete.

As a fun aside at the end here, we might ask what this could be used for in terms of automation or procedurally generated content. Unfortunately I think the application is limited, until the inputs and outputs become more accessible, which will be impossible for some games. The best use case I can imagine would be to think of each node through the lens of information theory and assign it an uncertainty value. This value represents how many feasible solutions the player might try, but are ultimately incorrect. The higher the number the less likely the player will stumble upon an answer. Each piece of information on the input side could then correspond to the number of possibilities it crosses off the list, reducing the uncertainty, or in info theory jargon: informational entropy. Again, super impractical and definitely limits the use cases of the tool, but for games where a monte carlo simulation or other similar test is possible, it might make a good candidate for this kind of integration.

{% include open-embed.html %}
