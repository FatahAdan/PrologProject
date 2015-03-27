/*players*/

player(ashraf).
player(sisoko).
player(milly).
player(claire).

/*gender*/

male(ashraf).
male(sisoko).
female(milly).
female(claire).


/*football training pairs. and friends*/

pairs(ashraf, sisoko).
pairs(sisoko, ashraf).
pairs(milly, sisoko).
pairs(sisoko, milly).
pairs(ashraf, milly).
pairs(claire, sisoko).

partners(X,Y):-
	pairs(X,Y),
	pairs(Y,X).

friends(X, Y) :-
	pairs(X, Y);
	pairs(Y, X).
	
/* football training schedule(Player, training, Day)*/

training(ashraf, sprints, monday).
training(sisoko, dribbling, monday).
training(milly, shooting, tuesday).
training(claire, passing, tuesday).
training(sisoko, shooting, wednesday).
training(ashraf, passing, wednesday).
training(milly, sprints, friday).
training(claire, dribbling, friday).

/*Rules who has better dribbling */

player(ashraf, dribbling, everyday).
player(sisoko, dribbling, monday).

better_than(ashraf, sisoko) :-
	player(ashraf, dribbling, everyday).
	player(sisoko, dribbling, monday)
	write(ashraf), write(' has better dribbling than '), write(sisoko), nl.
	
/*Rules to see Who is faster*/

player(sisoko, sprints, everyday).
player(ashraf, sprints, tuesday).

faster_than(sisoko, ashraf) :-
	player(sisoko, sprints, everyday).
	player(ashraf, sprints, tuesday).
	write(sisoko), write(' is faster than '), write(ashraf), nl.
	
/*who has better passing*/

player(milly, passing, everyday).
player(claire, passing, wednesday).

betterPassing_than(milly, claire) :-
	player(milly, passing, everyday).
	player(claire, passing, everyday).
	write(milly), write(' has better passing than '), write(claire), nl.
	
/*Training sessions*/

Session(
	training,
	day(monday),
	time(10:00, 11:30),
	player(ashraf, sisoko)).
	
Session(
	training,
	day(tuesday),
	time(11:00, 12:30),
	player(milly, claire)).
	
Session(
	training,
	day(wednesday),
	time(11:00, 12:30),
	player(ashraf, sisoko)).
	
Session(
	training,
	day(friday),
	time(11:00, 12:30),
	player(milly, claire)).
	