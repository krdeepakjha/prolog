%Movies
movie(the_dark_knight).
movie(the_dark_knight_rises).
movie(batman_begins).
movie(lincoln).
movie(nine).
movie(the_boxer).
movie(brokeback_mountain).
movie(collide).
movie(misconduct).
movie(noah).
movie(the_prestige).
movie(real_steel).
movie(scoop).
movie(da_vinci_code).
movie(angels_and_demons).
movie(inferno).





%Actors
actors(christian_bale).
actors(daniel_day_lewis).
actors(heath_ledger).
actors(anthony_hopkins).
actors(hugh_jackman).
actors(tom_hanks). 



%director_of_the_movie

director(christopher_nolan, the_dark_knight).
director(christopher_nolan, the_dark_knight_rises).
director(christopher_nolan, batman_begins).
director(steven_spielberg, lincoln).
director(rob_marshall, nine).
director(jim_sheridan, the_boxer).
director(ang_lee, brokeback_mountain).
director(eran_creevy, collide).
director(shintaro_shimosawa, misconduct).
director(darren_aronofsky, noah).
director(christopher_nolan, the_prestige).
director(shawn_levy, real_steel).
director(woody_allen, scoop).
director(ron_howard, da_vinci_code).
director(ron_howard, angels_and_demons).
director(ron_howard, inferno).


%actors_of_the_movie
actors_of_movie(christian_bale, the_dark_knight).
actors_of_movie(christian_bale, the_dark_knight_rises).
actors_of_movie(christian_bale, batman_begins).
actors_of_movie(daniel_day_lewis, lincoln).
actors_of_movie(daniel_day_lewis, nine).
actors_of_movie(daniel_day_lewis, the_boxer).
actors_of_movie(heath_ledger, brokeback_mountain).
actors_of_movie(anthony_hopkins, collide).
actors_of_movie(anthony_hopkins, misconduct).
actors_of_movie(anthony_hopkins, noah).
actors_of_movie(hugh_jackman, the_prestige).
actors_of_movie(hugh_jackman, real_steel).
actors_of_movie(hugh_jackman, scoop).

actors_of_movie(tom_hanks, da_vinci_code). 
actors_of_movie(tom_hanks, angels_and_demons).
actors_of_movie(tom_hanks, inferno).


%actors_and_directors
%director_and_actor(X,Y) :- 
likes_movie(person1, the_dark_knight).
%may_like_movie(Person, Movie) :- likes_movie(Person, Some_movie), same_director(Movie, Some_movie). 
%same_director(Movie1, Movie2) :- director(X, Movie1), director(X, Movie2), Movie1 \= Movie2. 
same_actor(Movie1, Movie2) :- actors_of_movie(X, Movie1), actors_of_movie(X, Movie2), Movie1 \= Movie2.

