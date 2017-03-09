
predicates
  male(symbol) - nondeterm (o)
  female(symbol) - nondeterm (o)
  mother(symbol,symbol)- nondeterm (o,i)
  cucu(symbol,symbol)- nondeterm (o,i)
  adik(symbol,symbol)- nondeterm (o,i)
  kakek(symbol,symbol)- nondeterm (o,i)
  
clauses
  male(john).
  male(james).
  male(peter).

  female(sue).
  female(mary).
  female(ann).

  mother(mary,james).
  mother(ann,john).
  mother(ann,sue).
  cucu(john,peter).
  adik(sue,john).
  kakek(peter,john).

goal
  mother(Mother,james),
  cucu(Cucu,peter),
  adik(Adik,john),
  kakek(Kakek,john).
