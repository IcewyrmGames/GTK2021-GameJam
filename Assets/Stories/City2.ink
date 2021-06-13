VAR HowManyTimes = 0

=== City2 ===

s: You travel to the second settlement. 
-> Entrance

= Entrance
n: Greetings, crusty traveler. You must be from {CompanyName}. My name is Gula Gwuff.
* p: Greetings, that's right madam. I just finished a fine stay with {City1Leader} and made quick work of the trip here.
- n: Well, I'm sure you got our searing response that said we have no interest in your business here.
* p: ...
    -> TurnedAway
* p: Yes, we heard. I thought perhaps an in-person visit would be regarded more warmly.
    n: Well, I fear you were about as wrong as it would be to have dinner for breakfast.
    p: No need to be salty about it.
    n: I prefer briny.
    -> TurnedAway
* p: {City1Leader} spoke so highly of you over dinner. I couldn't leave this planet without at least stopping in.
    n: {City1Leader} did? Really?
    s: She docks her head to the side.
    n: Well... I gander he'll say a nice thing or two about just about anyone I dare say!
    s: She eyes you. 
    n: What was he serving?
    ** p: Uh... was it Mootrat?
    ** p: I think he said it was Mooskrat.
    ** p: It was definitely Moostac.
    - s: She closes her eyes and nods. 
    n: Well, back to business.
    -> QuestionsAndAnswers
    
= QuestionsAndAnswers
{TurnedAway == 1:
    n: You just don't take no for an answer, do you. Fine, I will humor some questions. But don't get too sticky and think this means we will be joining your rail network.
    - else: 
    n: {~ I suppose I can answer a few questions. | What do you have for me? | What would you like to know? }
    }
* p: Can you tell me a little bit about Gwuff Hills?
    ~ HowManyTimes++
    n: Gwuff Hills, yes. Well. You see that we are surrounded by a delicate ring of mountains. I've have you know we are the number one server of coal in the area.
    -> QuestionsAndAnswers
* p: Can you tell me more about this coal?
    ~ HowManyTimes++
    n: Our fine coal has a nicely done charr that embodies their smoky undertone, which is clear in their darkened appearance and crispy texture. They burn bright cherry-red to get the work done that needs doing. 
    -> QuestionsAndAnswers
* p: What can I do to sweeten the pot for you?
    ~ HowManyTimes++
    n: S-Sweeten the...  I told you we have no interest in joining, yes? Try again. 
    -> TurnedAway
* {HowManyTimes > 2} p: Do you happen to like... snacks?
    n: There is no snack that deserves that title unless you are referring to... wait, what?
    p: What snack?
    n: Well, EARTH snacks, of course. 
    p: What if we got you some... Earth snacks?
    -> CompleteCity
* {City1.EarthSnacks} p: Perhaps we could throw in a steady supply of Earth Snacks to satiate your disinterest in joining. 
    -> CompleteCity

= TurnedAway
n: Goodbye then. 
-> END

= CompleteCity
s: Gula Gwuff's face suddenly completely changes. 
n: "DID YOU SAY EARTH SNACKS?"
s: She's practically shouting.
n: Ahem, I mean, what is this plan you say, regarding Earth Smack-Snackery?
* p: If you join our network, I'll make sure you don't run a single day without a steady stock of Earth Snacks. 
* p: I'll bring you so many Earth Snacks, you'll run through your coal supply throwing the overstock in the incinerator.
* p: Our company will personally make sure your supply of Earth Snacks is never again what this place lacks.
- n: Well then, I think you have yourself a deal. 
~ City2Complete = true
-> END