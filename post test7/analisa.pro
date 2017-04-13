DOMAINS
integerlist = integer* /*pada parameter integer menggunakan sebuah *(arsetik) yang  menandakan bahwa domain 
			tersebut merupakan sebuah list */

PREDICATES
tambah(integerlist,integerlist,integerlist) /* lalu pada predicates dideklarisakan tambah dengan integerlist karna 
						pada pendeklarisan pada goal berupa angka, dan list integerlist digunakan
						karena parameter diatas memnunjukan sebuah list */

CLAUSES
tambah([],List,List). /* lalu pada fakta diisikan sebuah list kosong pada awal , yaitu guna menampung sebuah isian yang nanti akan dideklarasikan pada aturan */
tambah([H|L1],List2,[H|L3]):- /*lalu kita pecah menjadi bentuk ekivalen yang dimana pada L1 dan L3 teradapat garis vertical bar yang menunjukan bahwa L1 dan L3 masing masing 
				memiliki head dan tail dan List2 adalah sebuah variabel */
tambah(L1,List2,L3). /* L1 dan L3 disini akan dideklarisakn menggunakan [] pada goal menandakan bahwa L1 dan L3 adalah sebuah domain ekivalen yang dimana dalam pemanggilannya
			digoal nanti tidak menggunakan [] maka tidak akan bisa berjalan ,atau program eror tidak bisa running dan List2 dituliskan mengikuti aturan diatas */

GOAL
tambah([1,2,3,5,6],[8],L). /* pada goal akan menghasilkan L=[1,2,3,5,6] yang dimana L1=[1,2,3] dan L3=[5,6] dan List2 digunakan untuk mengubungkan L1 dan L3 sesuai dengan pada
 				pendeklarisian pada predicates yang dimana L hanyalah sebuah Variabel yang tidak ditetapkan (bisa dignti) */ 