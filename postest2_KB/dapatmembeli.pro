PREDICATES
 nondeterm dapat_membeli(symbol, symbol)
 nondeterm orang(symbol)
 nondeterm mobil(symbol)
 suka(symbol, symbol)
 dijual(symbol)


CLAUSES
dapat_membeli(X,Y):-
orang(X),
mobil(Y),
suka(X,Y),
 dijual(Y).
 orang(nur).
 orang(yudi).
 orang(dian).
 orang(heni).
 mobil(atoz).
 mobil(kijang).
 suka(dian, atoz).
 suka(yudi, pecel).
 suka(heri, buku).
 suka(nur, komputer).
 dijual(kijang).
 dijual(atoz).
 dijual(buku).
GOAL
 suka(yudi,pecel).