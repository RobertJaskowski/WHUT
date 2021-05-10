VAR lastVisitedKnot = -> Prologue

->Prologue

==Prologue

"Evening" #b:mid:outside
"You are assinged to deliver some papers"

Narumi
If i do this I can finally go home. I can't wait!

custom:Friend 
See you tomorow Narumi

Narumi
Bye #exit:friend


%As you are walking you notice red stains on the ground

Narumi 
What is this? 

Narumi 
It's...
...blood?! What is it doing here ?!"


%What do you do?
 *It's probably a joke
    Narumi 
    someone is probably messing around...
    Narumi 
    I'll just ignore this
    
    -> END
 
 *Go after it
    %You follow the trail of the stain
    %It leads you to the door...you see knife next to it
    Narumi 
    What's it doing here..this is scary...
    %You take a look through the window in the door
    %The view that you see make so horrified that you drop everything
    %But without hesitation you tug the door... with no result
    %You pick up the knife to use it as a tool....


-> Entry
== Entry

%You sit with your eyes in a notepad #b:mid:classroom
Mako 
I need your help Narumi
Mako 
I need...
Narumi 
You finally want to join a club I am so happy!
Narumi 
Let's go there immediately!
%Without waiting you grab Mako and run to the club
Narumi 
Let...me... fin..
    *Keep running
        %You enter literature club without hesitation
        Narumi 
        I have a new member for you...here it is!
        %As you show the place where Mako should be standing, there is no one there 
        President You want to join?
        President We was just looking for a new person
        %Everyone from the club gathers around you
        Narumi 
        It's too close, makes me uncomforable
        Narumi 
        This is misunderstanding!
        %However club members block your way out!
        President Wait! At least stay for a little while before you decide!
        You must be desperate, now that you try that kind of methods!
        Narumi 
        What methods??
        I don't want to join!
        President You don't have to hide anything...
        Sit and take a lok what we are doing in this club
        %You are pushed and forced to sit
        President 
        Let's do the poem everyone!
        %asdasdasd naspidnas dbnas;d nbasdba;sd bsa;odba;sora ora ora
        %It's so boring for you that you are trying to not fall asleep
        %asdb oasdub asodb lashdbfhdbsfi hdsifblsdifbsldifb sldifbsldfb
        %ngf;gbn;fdgbdfibialsdahsduhguognd;ofghdflhoeuwrhywe
        %He asks you as you suddenly come to life
        ->DidYouLikeIt
        
    *Wait to hear her out
        Narumi
        What do you want to tell me?

        Mako
        Why are you running… it’s just …
        
        %It’s hard for her to take a breath
        
        Narumi 
        We are going to join a club
        You suggested it didn’t you?
        
        Mako
        I just want a book…
        
        %Shows you back of the flyer
        
        Mako
        This book!
        
        Narumi 
        Sorry I misunderstood.
        I’ll take care of this
        ->bookReturnEventPoemB
        
-(DidYouLikeIt)
    custom:President 
    Did you like it?
    *(poemA)Yes... and exit
        Narumi Yes..
        It was great, but I still need to think about it.
        I will let you know
        custom:President 
        We will expect news from you
        %You get up and hear something
        Narumi
        Did something just fell from my back?
        Narumi
        It’s the same flyer Mako showed you
        Narumi
        ...Mako...again
        custom:President 
        You look surprised
        Didn't you know about it?
        custom:President
        We thought that you did it yourself to join this club
        Narumi
        It's probably my friend fooling around with me...
        %You leave and go back to the classroom 
        -> classReturnEvent
    *(poemB)No
        Narumi
        I didn’t like it very much, sorry
        
        President
        Then why did you so desperately tried to enter this club with our flyer?
        
        Narumi
        What flyer??
        
        President 
        It’s on your back 
        %He rips a flyer from your back and gives it to you
        
        Narumi
        What!?? It… I have to go 
        -> classReturnEvent
    *(poemC)Offend them
        Narumi 
        How can you create such little interesting shit.
        
        Narumi 
        This made me so sleepy...
        that even if I was hit by a car at the time of your reading,
        I would still be sleeping
        
        Narumi 
        Next time, take care of assembling pens instead of using them,
        because it will be much more useful.
        … and interesting...
        %He throws a book at you
        
        President 
        Then get out of here!
        
        Narumi 
        Of course i will go, I prefer sitting in empty class rather than club with broken pens
        %You leave and go back to Mako
        -> classReturnEvent
    
    



-> DONE

==bookReturnEventPoemB
Narumi I am sorry. I just I came here for this book 

%You show the right side of the flyer 

custom:President 
Ahh..Yes we wanted to return it...here it is  

Narumi 
Thanks  
Narumi 
Now i just need to give it to Mako

-> bookB
    


==classReturnEvent

%You walk back into class and see Mako drinking a juice  

Narumi 
..MAKOO!
What did you do this to me ?  

Mako 
What?  

Narumi
You set me up 
I thought you wanted to join  

Mako 
I never said it 

Narumi 
What did this flyer meant then? 

%You show the same flyer 

Mako
I needed a small favor from you. 
I wanted you that you bring back a book from club that they borrowed but haven’t returned yet 
Mako 
I took this flyer so i won’t forget room and i wrote book title on the back. 

%She turns flyer around 
%it says “William Shakeit  juliet and … juliet?

Narumi 
What was it doing on my back then? 

Mako 
You was so fast dragging me around that i tripped and it must have glued to your back.
I ran away immediately. 

Narumi 
... 

Mako 
Did you bring the book back?


	*Didn't even knew...
	    ->succeededA
	*Just go get the book
		->succeededB
	*Don't think about it
		->succeededC

==succeededA
    Narumi I didn’t even knew i had to get it back 
    Narumi I saw only one side of this flyer 
    Mako It’s fine, I’ll get it back somewhere else
    
-> afterBook

==succeededB
%You don't say anything and you take your leave  
->bookReturnEvent


==bookReturnEvent


*{Entry.poemA}
-> bookReturnEventPoemA
{Entry.poemB} 
-> bookReturnEventPoemB
{Entry.poemC} 
-> bookReturnEventPoemC


==bookReturnEventPoemA
Narumi 
It’s me, I just  came here for a book. 
Narumi 
Do you have it ? 
custom:President
We do…, but why should we give it to you? 


	*It was for my friendbookReturnEventPoemA1
		->bookReturnEventPoemA1
	*Try to convince
		->bookReturnEventPoemA2


==bookReturnEventPoemA1
Narumi 
It’s for my friend she has trouble speaking her mind, so she asked me 
President 
When we was reading you sleep and then you lied about our poems being good. 
President 
Why we should believe you now? 

Narumi 
I am sorry i was just thinking about my friend 

President 
…ehh
Take it. 

Narumi 
Thank you and sorry again  
->bookB

==bookReturnEventPoemA2
Narumi 
If this book stays here it will just be lying around while I need her. 
As well you won’t need to worry about returning her anymore.
	
custom:President
We are still reading it 

Narumi 
But..  
	
custom:President
Come back some other time 

%You are walking away with dissatisfaction  
->bookA



==bookReturnEventPoemC
Narumi I have a...

President Get out! 
%Throws something again at you

%You exit immediately 

Narumi I have surrender with getting this book
->bookA



==bookA
%You are back in the class and you approach Mako 
Mako 
And...? Did you get it back? 



	*Liebook
		->bookFailA
	*They were assholes
	    ->bookFailB
	*Say the truth
		->bookFailC

==bookFailA
Narumi 
They didn’t have this book

Mako
It’s alright
->afterBook

==bookFailB

Narumi 
They turned out to be complete assholes and I couldn’t get it back.
Now I'm nervous because of them

Mako 
Sit and think about something else
->afterBook

==bookFailC
Narumi 
I am sorry I had small problems and couldn’t get it back.

Mako 
Don’t worry about it

->afterBook

==succeededC
Narumi Let’s not think about this book and talk about club
-> afterBook


==bookB
    Mako 
    And…? Did you get it back?  
    
    Narumi
    I have it! 
    
    %You give book to Mako  
    
    Mako 
    Thanks 
    
->afterBook



== afterBook

%You sit in front of Mako 

Narumi 
Why won’t you give a chance some of the clubs?  

Mako
It looks like some waste of time for me  
Mako 
and… I just don’t feel like joining a club.

Narumi 
We both know that you aren’t good at communicating with other people. 
Yet you are still trying to get better 
I am the only one that can help you with that
Will you try with me, if we sign up? 

Mako 
We will just be forcing this when we don’t need it  
It’s a bad idea

Narumi 
Again the same response
It's getting late let's go home  

%On the next day, lunch time 
%You sit in front of Mako and open your food 
%You take a quick look at Mako’s food 

Narumi 
You always bring the same food, is it that good?   


Mako 
Not really. I just got used to it and i don’t think about the taste. 


	*Ask for a piece
		->foodAskA
	*Steal her food
		->foodAskB


==foodAskA
Narumi 
Can i try?  

Mako
But it’s not that good. 
I bet you won’t like it … here  

%She gives you one onigiri 


Narumi 
Let’s try it
->foodTaste

==foodAskB
Narumi 
Take this! 
%When Mako is holding her food you quickly steal some of it from her box
%She takes a look at you... and doesn’t react like nothing happened 
->foodTaste

==foodTaste
Narumi
There is no specific taste

In difference with mine...

%You take a bite of you food

Narumi 
Her food is really plain
How can she eat this everyday??
Who makes your food?  


Mako 
I make it myself, my parents are busy 

%Suddenly an idea strikes to your mind

Narumi 
I know we should join a cooking club. 
Then we both could learn and eat something good!

Mako 
Mehh... it soulds like another trouble  

Narumi 
Don’t let me beg you… if we won’t like it we just quit  

I hope she agrees I hope she agrees I hope she agrees I hope she agrees I hope she agrees I hope she agrees I hope she agrees I hope she agrees


Mako
Fine, but don’t give yourself high hopes.  
I will probably leave after a day. 
We’ll try tommorow 

Narumi 
To be sure you won’t change your mind make a promise 
I know that she honors every promise she makes

Mako 
Ehhhhh….

%She hold food in front of her 

%You hold a piece of food and connect it with her as a sign of promise 

{foodAskB} 
-> foodStealAnswer


->cookDay


==foodStealAnswer
Narumi 
Suddenly she kick you in a leg and you drop your food ...it lands in...Mako’s box 
Hey! It’s my food! What are you doing! 

Mako 
Just making a promise… doesn’t it look like it? 

%She says as she eats your food


Narumi 
Pff…It’s not like i mind ...I’ve got what i wanted  
->cookDay

==cookDay
%Next day in front of cook club  
Narumi
I'm sorry we wanted to join 


{Entry.poemC} 
->cookClubC
{Entry.poemB} 
->cookClubA
{Entry.poemA} 
->cookClubA



->cookClubA





==cookClubA
custom:Cook 
We was just starting to cook 
custom:Cook 
You can prepare right away 

%As he points to cooking clothes

custom:Cook 
Put these on 
custom:Cook 
Do you want to cook something specific?

Narumi 
Maybe we will cook something for later? 

Mako 
Onigiri? 

Narumi 
...No...
It would be good to cook something easy to make at home
Something as an alternative for her food


Narumi 
I know! Let’s make pancakes! 
I have heard it’s very easy to do 

custom:Cook 
You can take this stand 

Mako 
We will be cooking alone?

custom:Cook 
Why not?  
You will be just fine…  


%As you take place near the stand you see Mako holding knife weird way 


Mako 
I am ready 

Narumi 
This can’t end well 
Maybe at first we will gather all ingredients  



Mako
Sure  

%She starts searching 
%You though need to look into recipe to know what you need


Narumi 
I’ll go get the the mixer 

%You open upper cupboard and try to get mixer 

%When doing this some of the metal bows falls on the ground 

%And you land on the floor 
%When looking at club member, he looks at you with disapproval 


Narumi 
I am sorry... 

Mako 
This bowl we will need too.   
Here hold it 

%She puts it on your head

Narumi We just throw now all ingredients 

Mako 
Ignored...huh?

%You break an egg using two hand
%Part of shell fell into from the first one 
%Second completely fell on the counter 
%When looking at club president, he has the same disapproval eyes

Mako
I don’t think you have the talent for handlings eggs  

Narumi 
Here you have it then 

%She breaks two at the same time perfectly

Narumi 
It's surprising how easy she can handle cooking

%She turn on mixer 

Narumi 
Now we just need to fry it  

%You go near the stove and try to turn it on 

Narumi 
I don’t think it’s working properly

%And you try few more times

Cook Wait! You are gonna kill us all! 

%He comes to you and turn it on in first try 
%All you can do i put your head down 

Mako 
I’ll take care of this.  
Prepare whipped cream please 

Narumi 
Ok…. 

%Minute later

Mako 
Ok it’s enough  

Narumi
I am done too  

%As you put down mixer bowl with a whipped cream fells to the ground 

%You freaked out and tripped  

Narumi 
I am sorry.. 

%You hear president sigh loudly

Mako 
Hahha  
Nothing happened

Narumi 
But i just destroyed... our... 

%She picks up a bowl and flips it and she shows it to you 
%Whipped cream hold to the bowl and doesn't fall out

Mako 
See?  
You did a good job making it, because it holds itself 
Now we can’t mess anything else. 

custom:Cook 
Emmm.. 
You know… it will be hard to find a place in this club 

%Without any word you leave club to find a place to eat 
-> foodReady

==cookClubC
custom:Cook 
I’ve heard someone was loudly arguing with literature club 
We don’t want that kind of people here.
Leave!!  

%You both leave without any question  

Narumi 
Sorry … I didn’t want it to be this way 

Mako 
It’s fine I wasn’t positive about this from the start.  
I’ve got some leftovers so let’s find some place to eat it. 
->foodReadyBasic

==foodReadyBasic

Narumi 
You should eat better 

%You say as you both eat onigiri

Mako 
I have strength to walk so I don’t see a problem 

Narumi 
There is one. You must eat better 

%You say it and Mako looks at you with disgusted face 

Mako 
Do you always have to tell everyone what to do? 

Narumi 
What do you mean? 
I am just speaking about proper eating

Mako 
So NOW you only speak about it? Everyday you want something from me! 
Join the club! 
Do this and do that!
On clubs you force everything you want just to achieve your goals!

Narumi 
It’s because… i always think about you... 

Mako 
About me? Are you kidding? Did I ever tell you that i want to join some club? 

Narumi 
Of course not, it’s because you have problems with social skills 

Mako 
I have, but with other people
With you… I don’t know why, but with you i never had them…
Yet i know that forcing me to everything you irritate me so much 

Narumi 
I... 

Mako 
I know you.... you 

%You see disappointment in her face
%You look at each other second...five… fifteen...while flowing emotions through you are blocking your speech

Mako 
We need… Let’s give ourselves some time

Narumi 
..Mako… 

%Your mind went completely blank
%All you can do is to hide your face in hands
%While Mako’s leaving from you with every step you start to feel more and more loneliness
%And you ask yourself

Narumi 
Why? 
-> END


==foodReady


%You sit outside and try pancakes at the same time  
%
Narumi 
It’s a little…. 

Mako 
How delicious!  

Narumi 
...without taste  



Mako
What are you saying?  

Narumi 
They aren’t even sweet how is it possible to make food with whipped cream that isn’t sweet?? 
..Mako is used to very simple food so everything else will probably be good for her taste
Narumi 
But I am disappointed... 

%She takes last bite of her pancake and she looks at you

Mako 
I am satisfied but if you want it to be much sweeter... 

%She picks up another and hits you with it right to your face 


Mako
Now it’s much more sweeter  


Narumi 
Just wait…! 


Mako 
o… no no n on ono  

%And you start chasing Mako 

Mako
Help! I don’t have a weapon! 

%It doesn’t take long for her to figure out she doesn’t have condition for running
%She stops, sits down and breathes heavily 

Mako
I can’t... anymore…. 

%She looks at you making sweet smile
%You hit it straight to the face

Narumi 
Finally! 

%And you take a sit too laughing

Mako
Now we both look sweet 

%She pulls out phone and takes a photo of you 

Mako 
You finally smiled

%She shows the photo of you smiling setCinematic(photo)
%You take the phone

Narumi 
She deliberately provoked just to make me smile??
She did everything for me?
Why did she even had my phone? Did she planned this?

%She get up and says

Mako 
Now we just need to clean this up 

Narumi 
While I from the start was trying to do something for her
searching for place where she can spend her time

…she… she wasn’t even interested in pancakes

She just used this for my happiness
%You feel gratitude and overwhelming happiness going through your body
%You notice Mako making her leave toward the school and you instinctively go after her 

Narumi Wait for me!  

-> END




