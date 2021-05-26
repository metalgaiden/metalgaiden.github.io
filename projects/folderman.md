---
layout: page
title: Folderman
permalink: /projects/folderman
---
Folderman is an Augmented Reality Game(ARG) involving file and sound manipulation. 
The main game is based off pacman, with a number of nested puzzles hidden
in the game files.

My role in this project was to design all the augmented reality puzzles ranging
from changing file names, to analyzing audio spectrographs.

Here is a link to the [Itch.io](https://dawncloak.itch.io/folderman)

## Post Mortem:
*spoilers ahead*

The main goal for this project was to explore a number of steganographic techniques, 
which is to say, hiding information in a way that makes it seem like nothing is hidden.
Of course, when adapted to a game, and one that I want people to be able to complete, 
most of the puzzles are not nearly as hidden as they could have been.

I would like to go over, with this post mortem, all the methods I used and learned about. 
Documenting them for myself and analyzing how they could be used in a more cohesive body
of fiction.

### Part I: The Konami Code
When you first download Folderman you are greeted to an exe, the files of the game, and 
a zip file titled "Keep out".

![keep out](/assets/img/folderman/keepout.png)

Playing the exe starts a pacman clone, where you play as a folder picking up files scattered
around. You avoid error messages but collecting files doesn't seem to do anything special.

![game start](/assets/img/folderman/game_start.png)

In later versions I have also included an arg.txt file to get players started, as the first
clue is easy to miss. Opening arg.txt gives us this text:

> To start the ARG play the game and enter a pattern by moving to the borders of the game. 
> The pattern should be familiar to fans of retro games. 
> If you are still confused the password for the first archive can be translated from this: コナミ

As you might have guessed this refers to the classic konami code: ↑ ↑ ↓ ↓ ← → ← → b a start

Unfortunately for us, just inputting the code in as inputs doesn't seem to do anything. As 
the hint suggests we have to use the wraparound function of pacman's levels to input the
code.

When we do this the screen starts to glitch out, specifically half the screen, which is
an homage to the way the real pacman glitches out when you get past level 256.

![game glitch](/assets/img/folderman/game_glitch.png)

After a few seconds the screen goes black and the first password is given to us. With this
we can start solving the ARG.

![game konami](/assets/img/folderman/game_konami.png)

By going back to the folder where the game was downloaded we can now unlock keepout.zip 
with the password we just got.

![konami](/assets/img/folderman/konami.jpg)

### Part II: New Name, New File

Doing so gives us a folder titled "Step 1" with 3 files in it, another zip file, a clue to 
crack the password to the zip file and a hint for those in need of help.

![step 1](/assets/img/folderman/step1.png)

If we try to open the clue though we are met with yet another road block. It seems like no
image editor will even open the damn thing.

![clue 1](/assets/img/folderman/clue1.png)

The trick for this puzzle is pretty simple, most args start off with something along these
lines. Simply rename the file from .png to .txt and you'll be able to read what's inside.

![rename](/assets/img/folderman/step1_rename2.png)

With the first step down and out of the way we can move on to step 2. Once again we face 
three files, Thought this time there are two zip files instead of one.

![step2](/assets/img/folderman/step2_rename1.png)

This is just a bit of misdirection though as once again you just need to rename the clue
into a file format it can be read from, which in this case is a .png.

![step2 rename](/assets/img/folderman/step2_rename2.png)

From here we open the image aaaand... a whole lot of nothin. It's too dark to make out any 
sort of clue from this picture.

![clue 2](/assets/img/folderman/clue2.png)

For anyone familiar with photo editing, finding information here is as simple as pulling up
the contrast and WHAM, just like that we can grab the password for part 3.

![clue 2 solved](/assets/img/folderman/clue2_solved.png)

### Part III: Feeling the *and*

Of all the puzzles I made for this ARG this is by far my favorite, and it also took the 
longest to put together.

Once we open the zip file for step 3 we are greeted with a bunch of text files.

![clue 3](/assets/img/folderman/clue3.png)

If we open the up we get a series of humerous messages, most of them just synonyms for
the name of the file they occupy.

Listen.txt:
> expect, wait for, hark, obey, await, note, heed, list, give ear, anticipate, attend, 
> hear, pay attention, mind

Music.txt:
> telephone, speech sound, earphone, telephone set, phone, audio, strait, headphone,
> auditory sensation, earpiece

The.txt:
> the the the the thethethetehtehethetehtethethethethethethehtehthethethehthehthehthte

To.txt:
> red... herring---
>
>          /"*._         _
>      .-*'`    `*-.._.-'/
>      `*-._`._(__.--*"`.\

Of course if you read the filenames by themselves you get a much more coherent message:
"listen to the music". And so in the spirit of the game I have provided the song here
for you to listen to, notice anything strange about it?

/assets/audio/music.wav

It's not the glitching sound effect, nor is it anything to do with the melody.
It's actually all in the bass line.

If you listen super close, and have a notepad ready, you can hear the baseline make a
distinct pattern everytime it comes in, made up of long and short notes.

Know anything else that stores information with long and short pulses?
Morse code of course!

If we map out the bassline over the course of the song we get the pattern: 
> -•-• --- -•• • •••-- •• ••• -••• • •- -

Which, when decoded translates to "C O D E 3 I S B E A T"

This was more challenging to put together than I first expected, as I actually 
played the bass to make this clip. I probably didn't need to but I just got
my bass in my dorm so I wanted to do something with it. Keeping tempo while
also keeping track of a code sheet and playing the right pattern each time
it comes up was a fun little challenge even if I only had one playtester get
to this point in the puzzles.

### Part IV Paperwork

You might be wondering at this point how any of this relates back to the game
itself, and while we will have to opne the game one last time to beat it for 
real, this was probably the biggest area for improvement on this project.

Sometimes I get too exited about the abstract idea of a gameplay implementation
that I don't bother to tie it into a larger narrative, and in this game it shows.
What is there is kind of just hinted at and not really well defined, a fairly flimsy
justificaion for all this busywork.

I say all this now because the game as it stands does start to build out some
themes. The puzzles so far are mostly trial and error, though the boundries of
what you can and can't do are based on how comfortable you are navigating a
computer's file system. I can see a potential for a narrative to be built
off the intuitions you gain while using technology affecting how you think
or what you consider as an "option" when it comes time to solve a problem. But 
that's neither here not there so Let's continue on to the second to last puzzle.

Step 4 opens up to 4 files, but it almost looks like I made a mistake while copying
the files into this folder.

![step 4](/assets/img/folderman/step4.png)

But once again that's part of the puzzle. The two files that claim to be carbon copies
are pretty close, but there are a few differences if you look closely.

This is one of the first puzzles that you really don't "need" computer knowlege to
solve, the answer is quite obvious, just find the letters that are different, 
but the gap between knowing that and knowing how to get that is somewhat daunting.

There are a lot of ways to solve this one, but the simplest method would probably be
to run a diff on the two files. Once you do that you still don't have the code,
instead you get an email adress and once you send it off, you get this response.

![email](/assets/img/folderman/email_response.jpg)

Wooo! Some lore, finally, a speck of water in the desert! Too bad it's pretty 
much the only water you get, so you'll have to hold out until the end.

I like this puzzle because of it's open endedness, most ARGs are focused solely on
the first crack of the cypher, so it's nice to see a more open, potentially expressive
puzzle. I think if I found tasks that were more immediately interesting maybe I could
do something cool with this in the future. For now we move on the the finale.

### Part V Spectre

The last puzzle is upon us, and it's a pretty cool one at that. Basically you open the
last zip file and are greeted to a wav file a hint... and that's it, no zip files in sight.

![step 5](/assets/img/folderman/step5.png)

This brings up some interesting questions about what form the information we need will be
in but before we can even start our ears are blasted off by the sound file.

I have taken the liberty of no including it, so as to spare your ears.

So what's up? It can't be a beat thing like before, this audio could scarcely be called a
song.

Well as cool as this one is, it's not likely many people would get it on their own. It turns
out that any wave form (which all sound basically is) can be plotted out in 2D space, which
is what you see in an audio editor with all those spiky lines. It's the rate at which the
sound vibrates the air, and it's usually a mess of a whole bunch of frequencies at once.

As it turns out, as soon as you can map some thing to 2D space, you can map just about anything.
For us this means we'll have to view the wav file as what's called a spectrograph. So
that we can see what this mess of white noise *looks* like, rather than sounds.

When we run it through a spetral analyzer I found online we get this image:

![spectrograph](/assets/img/folderman/spectrograph.jpg)

It's kind of hard to make out but once again we have a series of arrows, like with the konami code.
I'm sure you can see where this is heading.

Back in the game entering this code once again glitchs the screen, only this time you are presented
a choice:

![choice](/assets/img/folderman/choice.png)

Well it's too bad we didn't get this far, Eiter option it just spits you back to the first black 
screen. Kind of anticlimactic after all that effort, though maybe now is a good time to make a
snide "the journey was the destination comment".

### Conclusion

So how did it do?

As a game? Well even with the interesting ideas, there's not much motivation for the player to solve
any of the puzzles so I'd say I have a lot to work on on that front.

As an exploration? Well there were some cool ideas looked at here, though I think those who are
more well versed in ARGs would likely chew through this one in a weekend.

As an experience...? I guess it depends on the person, if I could teach someone even just a couple
neat tricks that'd be worth it to me. I know I got a lot out of it myself. Made me appriciate the
context that most modern ARGs provide, what with fake companies and stories of world domination.
Before starting this I had assumed that was all just a backdrop, just some prop that that players
knew was fake right away and didn't care about. But what I realized was that it's all part of the 
same experience. Part of breaking the codes is that "make a fort out of pillows and pretend you're 
a spy" energy. It's not missing the point, because to a certain extent, that kind of make believe
really is the point.

{% include open-embed.html %}
