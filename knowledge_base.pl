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







