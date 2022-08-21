// D E I T Y
// -> Fire_Age
-> Beginning

==Beginning==
What is a god? An omnipotent, all powerful being, with total control over reality itself? Is it a singular being, or are there many, each governing a separate aspect of the world we perceive? Or is that just our minds, imagining something to our own likeness and understanding, which in reality would be very much beyond our control and comprehension of the world. What if it’s both?
+ [...]
You
Awake.
There is nothing, no one, no thing, no self, not even concept in this void. 
Listless it drifts, even though there is nothing which to drift on or by. 
It is timeless, an eternity passes in a second, and a second takes all eternity, if such a thing did exist. 
-
+ [Drift]
You drift/wait, but it is the same. It is the very same moment as the first, or if there was a difference, it is unperceivable.
-
+ [List]
And yet, you are still here. What does that mean? What is “you”?
- 
+ [Think]
+ [Ponder]
-
You wonder, for an eternity, or a second; it matters not. Waiting for some epiphany, some action, some thought, some motion, anything. But it does not come. For there is nothing. 
+ [Search]
Aware of your own existence, you begin to look outwards. Or inwards. There is no boundary between the self and everything that is. But you search anyways
-
+ [Scour]
There must be something, anything, besides you. You cannot be all that there is. And yet, you find nothing. There is nothing else. 
-
+ [Concentrate]
You focus, but what is there to focus on? Reality is empty, and so are you. But you are something, a concept or idea that can be understood, provide a substrate for thought. And so you focus on whatever it is you are. A glittering form appears from the void, shapeless and ever changing, but it is something. Like your mind, it is a concept to hold onto. It takes you in, as you do it; A body to call your own. Something, in this vast endlessness. A barrier between the self and every thing that is not. But as you play and marvel at your new form, it presents to you a stimulus. A sensation. A feeling. There is something out there, tickling your senses. Small, but salient.
-
+ [Search]
In the distance, there is something.
Infinitesimal, but perceptible. A pinprick of light, a single ray, enough to draw the attention of your consciousness. But it presents a dilemma, it is foreign in you and your world. Approach it, and risk… something? Everything? Or ignore it, shun it, return to the void from which it is safe and swaddle in its nothingness.
-
+ [The Darknes is Safe]
Alas, it cannot be ignored. It will not go away. Small and imperceptibly as it is, it will not be ignored. It must be dealt with, else it will continue to itch and break the comforting emptiness as long as it exists.
-
+ [Inspect the itch]
	It is endlessly far away, but it does not matter as time holds no meaning. As you draw closer, one ray of light turns into two, then three, then many; It assaults your senses as you tentatively approach. Colors become perceptible, and then sound, as more and more things join the cacophony of sensations. You are almost there now, and it is almost unbearable in its energy. The amount of things spewing from it is unfathomable, perhaps it was a mistake to try and route whatever was producing this out. But there is no turning back now. 
+ [Look Closer]
	As you arrive, you see the shape of what you have been pursuing. It is a window, unceremoniously spewing energy into your safe, quiet void. Through it, you can see a strangely finite world, full of color and moving things. It hurts to watch at first, but as you get used to the shock, it becomes endlessly fascinating. Things! They move, they make noise, they stop, they go, all on incomprehensible reasoning, it is entertaining, and for a time, you forget the void from whence you came. Time, which previously had to meaning or purpose, governs the things that move within this window, and you spend it willingly, watching and learning the strange cycles of the world. 
-
+ [Watch]
	At one point, you notice a circle of beings. It is like countless you have seen before. They circle around some wood, chanting. It is peculiar, and difficult to tell why it draws your attention so. Perhaps the sound they chant is pleasing, perhaps it is the most perfect circle you have ever seen, and yet you continue to watch. You see, from your time observing this world, that they are gaunt, and that the land around them is not as green as it once was. They look haggard but hopeful, and so they continue the chant. 
-
+ [Observe]
	As you listen, you feel… something. Something completely different from all the amazing sensations that this world gave you in the past. Something… new. It is deep inside, and it feels like a fire, just an ember, growing, and warming. You feel… powerful. But after a while, the chant begins to fade. You see empty eyes, and hopeless gazes.
-
+ [point to a torch] As you point, you feel. The torch smolders, and none one notices, for they are too busy chanting. The wind picks up.
+ [Turn away] ->turn_away
-
+ [Focus]
With the wind, the ember grows. One person notices, and shouts. They shout your name. As more people notice, you feel invigorated.
+ [Give up] 
    You give up, it is not worth the time or effort. -> turn_away
-
+ [Focus more]
The torch roars to life, not even a gale could put it out now. People yell and the chanting grows louder, with the circle of people eventually dissolving into chaos. After a while, the chanting stops, and although the power lessens, you still hear whipsers of your name, like raindrops. One person picks up the torch, and the group journeys in the direction it represented.
+ [Give up] 
    You give up, it is not worth the time or effort. The embers fade, and eventually so too does the chanting. the gaunt people walk away, dissapointed. -> turn_away
-> top_loop

- (turn_away)
You turn away from the noise of existence, and close your mind to reality.
+ [Wonder] ->wonder

- (wonder)
You ponder what's happened. What does it mean?
+ [slumber] ->slumber

- (slumber)
You enter a deep sleep, and fade into the quiet darkness.
+ [...] ->Beginning



== Fire_Age ==
Time passes, and yet the fire at the center of the community burns on. They tend to it day and night, and discover it many uses

- (Fire_benefits)
* [Food]
    The abbility to rudimentarily cook food allows for increadible meals, 
->Fire_benefits
* [Light]
    The light cast by the fire allows activities late into the night, increasing productivity and strengthening the community.
-> Fire_benefits
* [Warmth]
    It keeps the terrible cold at bay, and for the first time ver, the people no longer have to move to a warmer climate to survive ->Fire_benefits
+ -> 
    Slowly but surely, the community grows, and to their new members they tell the story of the first fire that was gifted to them, by you.


-> top_loop



=== top_loop ===
-> Age_1 ->
-> Age_2 ->
-> Age_3 ->
-> Age_4 ->
-> Age_5 ->
-> Age_6 ->

->Forgotten

/*
 * Storylet setup
 * A lot of this came from the storylets example
 */
LIST replayableProps = replayable, oneShot
LIST replayableFrequency = immediate, threeTurns, fiveTurns

/*
 * Uses storylet properties to test availability 
 */
== function StoryletPropTest(propList, storylet_body_count, ->storylet_body_divert) ==
~ temp playable = not storylet_body_count
// First figure out if replayable frequency conditions met
{
    - not playable && propList ? replayable:
        {
            - propList ? immediate:
                ~ playable = true
            - propList ? threeTurns:
                ~ playable = TURNS_SINCE(storylet_body_divert) >= 3
            - propList ? fiveTurns:
                ~ playable = TURNS_SINCE(storylet_body_divert) >= 5
        }
}

// Then figure out if location conditions met
~ return playable

// Create list to keep track of time.
LIST time = one, two, three, four
VAR currentTime = one
// Function progresses time forward, or resets currentTime to morning if currently night
== function pass_time ==
{ 
    - not (currentTime ? four):
        ~ currentTime++
    - else:
        ~ currentTime = one
}

// Vars for tracking follower/worshipper population and faith. current value is arbitrary
LIST population = gone, tiny, small, medium, large, vast
VAR currentPopulation = small
LIST faith = none, little, some, strong, intense, unfettered
VAR currentFaith = some

=== check_follower_status(->ret) ===
+   {not done || TURNS_SINCE(->done) > 2} [See how the followers are doing.]
    { 
    - currentFaith ? some && currentPopulation > medium:
        Though there are many, it appears that little of them believe in me. That must be the reason for my reduced powers.
    - currentPopulation ? tiny && currentFaith > strong:
        Their faith is strong, but my powers are not. Perhaps I need a larger following to regain some ground.
    -else:
        I have a {currentPopulation} following with {currentFaith} faith in me.
    }
- (done) -> ret


=== Age_1 ===
Age 1
- (loop)
    { currentPopulation ? gone: -> ALLDead }
    { currentFaith ? none: -> Forgotten }
    It has been {currentTime} {currentTime ? one: season | seasons} since (something)
    {currentTime ? four:
        -> Age_1_end_event ->
        ->->
    }
    <- Age_1_main_storylet_description(->loop)
    <- Age_1_side_storylet_menu_description(->loop)
    <- check_follower_status(->loop)
    ->DONE

=== Age_1_end_event ===
+ [Add Age 1 night event here] {pass_time()}
->->


VAR age1MainStoryletProps = oneShot
=== Age_1_main_storylet_description (->ret) ===
{ StoryletPropTest(age1MainStoryletProps, Age_1_main_storylet_body, ->Age_1_main_storylet_body):
    + [Age 1 main storylet option]
      -> Age_1_main_storylet_body ->

    -> ret
}
->DONE

=== Age_1_main_storylet_body ===
something happened, and time has passed (add story content here)
{pass_time()}
->->

VAR age1SideStoryletMenuProps = (replayable, immediate)
=== Age_1_side_storylet_menu_description (->ret) ===
{ StoryletPropTest(age1SideStoryletMenuProps, Age_1_side_storylet_menu, ->Age_1_side_storylet_menu) && ( not(currentTime ? three) && not Age_1_main_storylet_body) || (currentTime < three && Age_1_main_storylet_body):
    + [Age 1 side storylet option]
      -> Age_1_side_storylet_menu ->

    -> ret
}
->DONE

=== Age_1_side_storylet_menu ===
// Tunnel to various storylets, use {passTime()} at the end of the tunnel before returning
+   [option 1] {pass_time()}
+   [option 2] {pass_time()}
+   [option 3] {pass_time()}

- ->->

=== Age_2 ===
Age 2
- (loop)
    { currentPopulation ? gone: -> ALLDead }
    { currentFaith ? none: -> Forgotten }
    It has been {currentTime} {currentTime ? one: season | seasons} since (something)
    {currentTime ? four:
        -> Age_2_end_event ->
        ->->
    }
    <- Age_2_main_storylet_description(->loop)
    <- Age_2_side_storylet_menu_description(->loop)
    <- check_follower_status(->loop)
    ->DONE

=== Age_2_end_event ===
+ [Add Age 2 End event here] {pass_time()}
->->


VAR age2MainStoryletProps = oneShot
=== Age_2_main_storylet_description (->ret) ===
{ StoryletPropTest(age2MainStoryletProps, Age_2_main_storylet_body, ->Age_2_main_storylet_body):
    + [Age 2 main storylet option]
      -> Age_2_main_storylet_body ->

    -> ret
}
->DONE

=== Age_2_main_storylet_body ===
something happened, and time has passed (add story content here)
{pass_time()}
->->

VAR age2SideStoryletMenuProps = (replayable, immediate)
=== Age_2_side_storylet_menu_description (->ret) ===
{ StoryletPropTest(age2SideStoryletMenuProps, Age_2_side_storylet_menu, ->Age_2_side_storylet_menu) && ( not(currentTime ? three) && not Age_2_main_storylet_body) || (currentTime <= three && Age_2_main_storylet_body):
    + [Age 2 side storylet option]
      -> Age_2_side_storylet_menu ->

    -> ret
}
->DONE

=== Age_2_side_storylet_menu ===
// Tunnel to various storylets, use {passTime()} at the end of the tunnel before returning
+   [option 1] {pass_time()}
+   [option 2] {pass_time()}
+   [option 3] {pass_time()}

- ->->

=== Age_3 ===
Age 3
- (loop)
    { currentPopulation ? gone: -> ALLDead }
    { currentFaith ? none: -> Forgotten }
    It has been {currentTime} {currentTime ? one: season | seasons} since (something)
    {currentTime ? four:
        -> Age_3_end_event ->
        ->->
    }
    <- Age_3_main_storylet_description(->loop)
    <- Age_3_side_storylet_menu_description(->loop)
    <- check_follower_status(->loop)
    ->DONE

=== Age_3_end_event ===
+ [Add Age 3 End event here] {pass_time()}
->->


VAR age3MainStoryletProps = oneShot
=== Age_3_main_storylet_description (->ret) ===
{ StoryletPropTest(age3MainStoryletProps, Age_3_main_storylet_body, ->Age_3_main_storylet_body):
    + [Age 3 main storylet option]
      -> Age_3_main_storylet_body ->

    -> ret
}
->DONE

=== Age_3_main_storylet_body ===
something happened, and time has passed (add story content here)
{pass_time()}
->->

VAR age3SideStoryletMenuProps = (replayable, immediate)
=== Age_3_side_storylet_menu_description (->ret) ===
{ StoryletPropTest(age3SideStoryletMenuProps, Age_3_side_storylet_menu, ->Age_3_side_storylet_menu) && ( not(currentTime ? three) && not Age_3_main_storylet_body) || (currentTime <= three && Age_3_main_storylet_body):
    + [Age 3 side storylet option]
      -> Age_3_side_storylet_menu ->

    -> ret
}
->DONE

=== Age_3_side_storylet_menu ===
// Tunnel to various storylets, use {passTime()} at the end of the tunnel before returning
+   [option 1] {pass_time()}
+   [option 2] {pass_time()}
+   [option 3] {pass_time()}

- ->->

=== Age_4 ===
Age 4
- (loop)
    { currentPopulation ? gone: -> ALLDead }
    { currentFaith ? none: -> Forgotten }
    It has been {currentTime} {currentTime ? one: season | seasons} since (something)
    {currentTime ? four:
        -> Age_4_end_event ->
        ->->
    }
    <- Age_4_main_storylet_description(->loop)
    <- Age_4_side_storylet_menu_description(->loop)
    <- check_follower_status(->loop)
    ->DONE

=== Age_4_end_event ===
+ [Add Age 4 End event here] {pass_time()}
->->


VAR age4MainStoryletProps = oneShot
=== Age_4_main_storylet_description (->ret) ===
{ StoryletPropTest(age4MainStoryletProps, Age_4_main_storylet_body, ->Age_4_main_storylet_body):
    + [Age 4 main storylet option]
      -> Age_4_main_storylet_body ->

    -> ret
}
->DONE

=== Age_4_main_storylet_body ===
something happened, and time has passed (add story content here)
{pass_time()}
->->

VAR age4SideStoryletMenuProps = (replayable, immediate)
=== Age_4_side_storylet_menu_description (->ret) ===
{ StoryletPropTest(age4SideStoryletMenuProps, Age_4_side_storylet_menu, ->Age_4_side_storylet_menu) && ( not(currentTime ? three) && not Age_4_main_storylet_body) || (currentTime <= three && Age_4_main_storylet_body):
    + [Age 4 side storylet option]
      -> Age_4_side_storylet_menu ->

    -> ret
}
->DONE

=== Age_4_side_storylet_menu ===
// Tunnel to various storylets, use {passTime()} at the end of the tunnel before returning
+   [option 1] {pass_time()}
+   [option 2] {pass_time()}
+   [option 3] {pass_time()}

- ->->

=== Age_5 ===
Age 5
- (loop)
    { currentPopulation ? gone: -> ALLDead }
    { currentFaith ? none: -> Forgotten }
    It has been {currentTime} {currentTime ? one: season | seasons} since (something)
    {currentTime ? four:
        -> Age_5_end_event ->
        ->->
    }
    <- Age_5_main_storylet_description(->loop)
    <- Age_5_side_storylet_menu_description(->loop)
    <- check_follower_status(->loop)
    ->DONE

=== Age_5_end_event ===
+ [Add Age 5 End event here] {pass_time()}
->->


VAR age5MainStoryletProps = oneShot
=== Age_5_main_storylet_description (->ret) ===
{ StoryletPropTest(age5MainStoryletProps, Age_5_main_storylet_body, ->Age_5_main_storylet_body):
    + [Age 5 main storylet option]
      -> Age_5_main_storylet_body ->

    -> ret
}
->DONE

=== Age_5_main_storylet_body ===
something happened, and time has passed (add story content here)
{pass_time()}
->->

VAR age5SideStoryletMenuProps = (replayable, immediate)
=== Age_5_side_storylet_menu_description (->ret) ===
{ StoryletPropTest(age5SideStoryletMenuProps, Age_5_side_storylet_menu, ->Age_5_side_storylet_menu) && ( not(currentTime ? three) && not Age_5_main_storylet_body) || (currentTime <= three && Age_5_main_storylet_body):
    + [Age 5 side storylet option]
      -> Age_5_side_storylet_menu ->

    -> ret
}
->DONE

=== Age_5_side_storylet_menu ===
// Tunnel to various storylets, use {passTime()} at the end of the tunnel before returning
+   [option 1] {pass_time()}
+   [option 2] {pass_time()}
+   [option 3] {pass_time()}

- ->->

=== Age_6 ===
Age 6
- (loop)
    { currentPopulation ? gone: -> ALLDead }
    { currentFaith ? none: -> Forgotten }
    It has been {currentTime} {currentTime ? one: season | seasons} since (something)
    {currentTime ? four:
        -> Age_6_end_event ->
        ->->
    }
    <- Age_6_main_storylet_description(->loop)
    <- Age_6_side_storylet_menu_description(->loop)
    <- check_follower_status(->loop)
    ->DONE

=== Age_6_end_event ===
+ [Add Age 6 End event here] {pass_time()}
->->


VAR age6MainStoryletProps = oneShot
=== Age_6_main_storylet_description (->ret) ===
{ StoryletPropTest(age6MainStoryletProps, Age_6_main_storylet_body, ->Age_6_main_storylet_body):
    + [Age 6 main storylet option]
      -> Age_6_main_storylet_body ->

    -> ret
}
->DONE

=== Age_6_main_storylet_body ===
something happened, and time has passed (add story content here)
{pass_time()}
->->

VAR age6SideStoryletMenuProps = (replayable, immediate)
=== Age_6_side_storylet_menu_description (->ret) ===
{ StoryletPropTest(age6SideStoryletMenuProps, Age_6_side_storylet_menu, ->Age_6_side_storylet_menu) && ( not(currentTime ? three) && not Age_6_main_storylet_body) || (currentTime <= three && Age_6_main_storylet_body):
    + [Age 6 side storylet option]
      -> Age_6_side_storylet_menu ->

    -> ret
}
->DONE

=== Age_6_side_storylet_menu ===
// Tunnel to various storylets, use {passTime()} at the end of the tunnel before returning
+   [option 1] {pass_time()}
+   [option 2] {pass_time()}
+   [option 3] {pass_time()}

- ->->
 
 
 == NoFood ==
->Forgotten

== ALLDead== 
->Forgotten

== Forgotten ==
you are forgotten
->END