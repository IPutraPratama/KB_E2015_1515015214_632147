DOMAINS
integerlist = integer* /*pada tanda * berarti doamin tersebut merupakan sebuah list*/
PREDICATES
tambah(integerlist,integerlist,integerlist)
CLAUSES
tambah([],List,List)./*ini [] list masih kosong yang belum bisa di pecah menjadi bagian head dan tail*/
tambah([H|L1],List2,[H|L3]):-/*di aturannya [H bagian head|L1 tailnnya] dimana ini menjadi head list nya,List2 untuk menambahkan list ke list yang lain ke list kosong tadi[] dimana head nya yaitu[H|L1] dan tailnya[H|L3],[H head nya|L3 tailnya] dan ini menjadi tail listnya jika maka*/
tambah(L1,List2,L3)./*L1=head list,List2 untuk mengambil list dari L1 sebagai head nya dan L3 sebagai tailnya,L3=Tail list*/
GOAL
tambah([1,2,3],[5,6],L)./*dimana goal nya ada list [1,2,3] dari [H|L1] itu sebagai head,dan list[5,6] dari [H|L3]sebagai tail nya dan L yaitu list kosong[] tadi yang mengambil nilai dari list yaitu list head dan list tail nya kemudian di gabungkan*/