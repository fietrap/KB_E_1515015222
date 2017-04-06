PREDICATES 
faktorial(unsigned,real)
faktorial(unsigned,real,unsigned,real)

CLAUSES 
faktorial(N,FaktoN):-
faktorial(N,FaktoN,1,1)./*Aturannya nilai dari L dan K adalah 1*/
faktorial(N,FaktoN,N,FaktoN):-!.
faktorial(N,FaktoN,L,K):-/*Aturannya N adalah L dan FaktoN adalah K*/
LBaru = L+1,/*pertama nilai LBaru yaitu L+1 atau LBaru 1+1 */ /*dan tahap kedua nilai LBaru menajdi 2+1 */
KBaru = K*LBaru,/* pertama nilai KBaru itu dikalikan dengan nilai hasil jumlah dari LBaru yang pertama yaitu 2 jadi KBaru=1*2 */
/* dan ditahap yang kedua nilai KBaru berubah menjadi 2 dan dikali dengan nilai hasil jumlah dari LBaru yang ke2 yaitu 3 jadi KBaru=2*3 */
faktorial(N, FaktoN, LBaru, KBaru)./* di tahap 1 faktorial (N,FaktoN, 2(nilai dari Lbaru yang pertama),2(nilai dari perkalian nilai K dengan LBaru yang pertama)) */
/* dan ditahap yang kedua 2 faktorial(N, FaktoN, 3(nilai dari LBaru yang kedua), 6(nilai dari pekalian nilai K dengan LBaru yang kedua)) */

GOAL
faktorial(3,X). /* didalam goal 3 adalah nilai dari N jadi lanjutkan ke tahap yang ke2 */
/* tahap yang kedua N=3 sehingga nilai X adalah 6 */