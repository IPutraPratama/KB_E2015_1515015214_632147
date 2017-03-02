predicates
nondeterm can_play(symbol,symbol) 
player(symbol) - nondeterm (o)
position(symbol) - nondeterm (o)
person(symbol,symbol) - nondeterm (i,i)
position_is_required(symbol) - nondeterm (i)

clauses
can_play(C,K):-
player(C),
position(K),
person(C,K),
position_is_required(K).

player(costa).
player(hazard).
player(cahill).
player(azpilecueta).

position(striker).
position(wingforward).
position(secondstriker).

person(costa,striker).
person(hazard,wingforward).
person(cahill,aaaa).
person(azpilecueta,tbbb).

position_is_required(striker).
position_is_required(wingforward).
position_is_required(coach).
position_is_required(subtitution).

goal
can_play(Player,Position).
