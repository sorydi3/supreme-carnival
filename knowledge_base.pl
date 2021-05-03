/*SOLAR SYSTEM DATABASE*/
body(mercury,36,small,none,none).

/*MEDICAL EXPERT SYSTEM*/
symtome(cold,sneezing).
symtome(cold,headache).
symtome(cold,runny_nose).
symtome(flu,headache).
symtome(flu,shivery).
symtome(flu,temperature).
symtome(brain_tumour,headache).
/*END*/

/*ANIMAL DATABASE SYSTEM*/

animal(mammal,tiger,carnivore,stripes).
animal(bird,eagle,carnivore,large).
animal(mammal,hyena,carnivore,ugly).
animal(bird,sparrow,scavenger,small).
animal(mammal,lion,carnivore,mane).
animal(reptile,snake,carnivore,mane).
animal(mammal,zebra,herbivore,stripes).
animal(reptile,lizart,scavenger,small).

/*END*/

/*QUERIES ANIMAL DATABASE*/
%animal(mammal,Animal,_,_). % Queries all animals that are mammals
%all carnivors wiche are mammals
%animal(mammal,Animal,carnivore,_).
%all mammals with stripes
%animal(mammal,Animal,_,stripes).
%wether there is are a reptile which has name
%animal(reptile,_,_,_). 
/*END*/

/*RULES*/

% They are basicaly an extension of facts.
% A rule consist of a head and body. The head is like a fact with it predicate and arguments
% The body consist of subgoals basicaly wiche are usualy other clauses, either fact or rules
%wich must all succeed or be true for the rule itself to succeed or be true.

%ault(electrical) := car_will_not_succeed , no_light
%WE COULD READ THIS RULE AS : THE FAULT IS ELECTRICAL IF THE CAR WILL NOT START AND HAS NO LIGHT.
% IT COULD ALSO INTERPRETED IN THE INVERSE AS :
% IF THE FAULT IS ELECTRICAL THEN THE CAR WILL NOT START AND HAS NO LIGHT


/*WEATHER DATABASE*/
/*weather facts*/
temp(hight).
barometer(low).
humidity(wet).
sky(overcast).

/*Rules for weather*/
weather(good) :- temp(hight),humidity(dry),sky(sunny).
weather(bad):- humidity(wet).
weather(bad) :- temp(low).
weather(bad) :- sky(overcast).
weather(uncertain).

/*Rules forecast*/

forecast(goog) :- barometer(hight).
forecast(bad) :- barometer(low).
forecast(uncertain).
/*END*/
/*RULES*/

valid(day,Day) :- Day > 0 , Day < 32.
valid(month,Month) :- Month > 0 , Month < 13.


/*END*/
/* A DATING AGENCY DATABASE */

/*FACTS*/
person(bill,male,24).
person(carole,female,15).
person(george,male,17).
person(margaret,female,52).
person(alfred,male,15).
person(jane,female,23).

/*RULES*/

male(Male) :- person(Male,male,_).
female(Female) :- person(Female,female,_).

man(Man) :- person(Man,male,Age),Age>17.
boy(Boy) :- person(Boy,male,Age),Age<18.

woman(Woman) :- person(Woman,female,Age),Age>17.
girl(Girl) :- person(Girl,female,Age),Age<18.

match_(Man,Femal) :- person(Man,male,Age),person(Femal,female,Age_g),((Age>17,Age_g>17);(Age<18,Age_g<18)).
match__(Man,Female) :- (boy(Man),girl(Female)); (man(Man),woman(Female)).

/*END*/









