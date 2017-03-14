domains
biaya = integer
usia = byte
person = symbol

predicates 
harga(biaya,biaya,biaya) - procedure (i,i,o)
pernikahan(usia)- nondeterm(o)
alamat_gedung(symbol,symbol) - nondeterm (i,o)
angka(char) - nondeterm (i)
suami(person,person) - nondeterm (o,i)
run - nondeterm ()

clauses 
harga(A,B,Biaya):-
Biaya=A*B.
pernikahan(21).
alamat_gedung("lembuswana","h-21").
alamat_gedung("tb","b-12").
angka(NB):-
'1'<=NB,
NB <='9'.
angka(NB):-
'1' <= NB,
NB <= '8'.

suami(joe,yosi).
run:-
	write("--------- Selamat Datang ----------"),nl,
	write("Selamat Datang"),nl,
	readchar(_).

goal
harga(12000000,50000000,Biaya),
pernikahan(Usia),
alamat_gedung("lembuswana",Nomor),
angka('7'),
suami(Siapa,yosi),
run.








 


