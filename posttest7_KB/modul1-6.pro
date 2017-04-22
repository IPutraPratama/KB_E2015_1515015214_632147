DOMAINS
menghasilkan=symbol
PREDICATES/*sebelum mendefenisikan predikat di clauses sebaiknya kita definisikan di section predicates terlebih dahulu agar visual prolog bisa mengenal predikat yang kita tuliskan*/
nondeterm hasil(symbol, symbol)
nondeterm menghasilkan(symbol, symbol)
penghasil(symbol, symbol)
print_menghasilkan
nondeterm penghasil_bumbu_dapur(symbol)
CLAUSES/*tempat di mana kita meletakkan fakta dan aturan*/

hasil(bahan_pokok,padi)./*ini adalah sebuah fakta*/
hasil(rempahrempah,lombok)./*ini adalah sebuah fakta*/

menghasilkan(denmark, bahan_pokok)./*ini merupakan sebuah pendeklarasisan fakta dimana negara inggris menghasilkan bahan_pokok*/
menghasilkan(prancis, rempahrempah)./*ini merupakan sebuah pendeklarasisan fakta dimana negara perancis menghasilkan rempah-rempah*/
menghasilkan(jerman, rempahrempah)./*ini merupakan sebuah pendeklarasisan fakta dimana negara jerman menghasilkan rempah-rempah*/

print_menghasilkan:- /*disini adalah aturan nya dimana print_negara akan mencetak jika maka*/

menghasilkan(X,Y),/*X=nama negara Y=penghasil*/
write(X,"Menghasilkan",Y,"\n"),/*akan mencetak nilai dari X dan Y*/
nl,/*akan membuat baris baru*/
fail./**/
print_menghasilkan.

penghasil(denmark,padi)./*ini merupakan sebuah pendeklarasisan fakta dimana inggris penghasil padi*/
penghasil(belanda,susu)./*ini merupakan sebuah pendeklarasisan fakta dimana belanda penghasil susu*/
penghasil(prancis,buah)./*ini merupakan sebuah pendeklarasisan fakta dimana perancis penghasil buah*/
penghasil(jerman,lombok)./*ini merupakan sebuah pendeklarasisan fakta dimana jerman penghasil lombok*/

penghasil_bumbu_dapur(Y):-/*di aturannya akan mencetak yang sesuai dengan fakta di atas jika maka*/

hasil(X,lombok),/*dimana hasil (X,lombok). X itu maksudnya bahanpokok yang sudah di deklarasikan tadi*/
menghasilkan(Y,X),/*disini menghasilkan (Y,X)dimana Y disini adalah nama negara nya dan X adalah jenis yang dihasilkan misalnya buah,padi atau lombok*/
penghasil(Y,lombok)./*disini penghasil(Y,lombok) Y yang di maksud disini yaitu adalah nama negaranya*/

GOAL
penghasil_bumbu_dapur(Negara),/*disini yang akan di tampilkan adalah Nama Negara yang menghasilkan rempahrempah yaitu lombok*/
nl,
print_menghasilkan()./*disini akan mencetak hasil dari proses perulangan*/
