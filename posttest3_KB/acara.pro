domains
biaya = integer
usia = byte
person = symbol

predicates 
acara_pernikahan(usia)- nondeterm(o)
alamat_acara(symbol,symbol) - nondeterm (i,o)
angka(char) - nondeterm (i)
pemilik_acara(person,person) - nondeterm (o,i)
harga_acara(biaya,biaya,biaya) - procedure (i,i,o)
run - nondeterm ()

clauses 
harga_acara(A,B,Biaya):-
Biaya=A*B.
acara_pernikahan(22).
alamat_acara("Jl.Pramuka","22").
alamat_acara("tb","b-12").
angka(NB):-
'1'<=NB,
NB <='9'.
angka(NB):-
'1' <= NB,
NB <= '8'.

pemilik_acara(agus,renal).
run:-
	write("\t\tSelamat Datang di Acara\n"),nl,
	write("\t\tSelamat Datang di Acara"),nl,
	readchar(_).

goal
harga_acara(105000,500000,Biaya),
acara_pernikahan(Usia),
alamat_acara("Jl.Pramuka",Nomor),
angka('7'),
pemilik_acara(Pemilik_acara,renal),
run.