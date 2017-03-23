DOMAINS 
gaji= real
name= symbol
player=symbol


PREDICATES
nondeterm pemain_yang_siap_bertanding(player)
nondeterm anggota(player,gaji)
cidera(player)
nondeterm coach(name)
posisi

CLAUSES 
pemain_yang_siap_bertanding(Player):-anggota(Player, Gaji),
Gaji>190000,
not(cidera (Player)).

anggota("gonzales",200000).
anggota("atep",75000).
anggota("costa",190000).
cidera("costa").

coach(antonio).

posisi:-coach(A),
write(A ,"\t","adalah coach","\n"),
fail.
posisi.

GOAL
pemain_yang_siap_bertanding(Anggota_yang_siap),
posisi.