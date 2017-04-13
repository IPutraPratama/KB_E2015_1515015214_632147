DOMAINS
nama=symbol

matakuliah=symbol

nilaimk=symbol

PREDICATES
nondeterm mk(nama,matakuliah,nilaimk)
nondeterm tidak_lulus(nama,matakuliah,nilaimk)

CLAUSES
mk("supardi","intelejensi buatan",a).
mk("suradi","intelejensi buatan",b).
mk("suyatmi","intelejensi buatan",c).
mk("suparni","intelejensi buatan",d).
mk("sujiman","intelejensi buatan",c).

mk("suharto","pde",b).
mk("sudirman","pde",c).
mk("supardi","pde",c).
mk("suyatmi","pde",b).
mk("sutini","pde",d).

mk("suharto","sistem operasi",b).
mk("sutini","sistem operasi",a).
mk("supardi","sistem operasi",a).
mk("suparni","sistem operasi",b).
mk("suripah","sistem operasi",c).

tidak_lulus(Nama,Matakuliah,nilaimk):-
mk(Nama,Matakuliah,d).

GOAL
write("1"),nl,
mk(supardi,Matkul_yangdiambilsupardi,_);
write("2"),nl,
tidak_lulus(Nama,Matakuliah,_);
write("3"),nl,
write("apakah supriah ikut kuliah semester ini"),nl,
mk(suripah,_,_).