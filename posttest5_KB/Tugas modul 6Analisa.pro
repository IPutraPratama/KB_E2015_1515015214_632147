PREDICATES
faktorial(unsigned,real)
faktorial(unsigned,real,unsigned,real)
CLAUSES
faktorial(N,FaktoN):-
faktorial(N,FaktoN,1,1)./*Aturannya niai dari I dan P adalah 1 */

faktorial(N,FaktoN,N,FaktoN):-!.
faktorial(N,FaktoN,I,P):-/*Aturannya N adalah I dan FaktoN adalah P*/
IBaru = I+1,/*pertama nilai IBaru yaitu I+1 atau IBaru=1+1 */ /*di tahap kedua nilai IBaru menjadi 2+1*/
PBaru = P*IBaru,/*pertama nilai PBaru itu 1 dikali kan dengan nilai hasil jumlah dari IBaru yang pertama yaitu 2 jadi PBaru=1*2 */
/*di tahap kedua  nilai PBaru berubah menjadi dua dan dikali kan dengan nilai hasil jumlah dari IBaru yang kedua yaitu 3 jadi PBaru=2*3 */
faktorial(N, FaktoN, IBaru, PBaru)./*di tahap 1 faktorial (N, FaktonN, 2(nilai dari IBaru yang pertama),2(nilai dari perkalian nilai P dengan IBaru yang pertama))*/
 /*tahap kedua 2 faktorial(N, FaktonN, 3(nilai dari IBaru yang kedua),6(nilai dari perkalian nilai P dengan IBaru yang kedua))*/
GOAL
faktorial(3,X). /*didalam goal 3 adalah nilai dari N  jadi lanjutkan ke tahap 2 */ 
/*tahap 2 N=3 sehingga nilai X adalah 6*/