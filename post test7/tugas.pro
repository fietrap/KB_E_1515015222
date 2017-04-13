DOMAINS 
nama = symbol
matakuliah = symbol
nilaimk = string

PREDICATES 
nondeterm mata_kuliah(nama,matakuliah,nilaimk)
nondeterm tidak_lulus(nama,matakuliah,nilaimk)

CLAUSES

mata_kuliah("supardi","ib","a").mata_kuliah("sudirman","ib","b"). mata_kuliah("suyatmi","ib","c"). mata_kuliah("suparni","ib","d"). mata_kuliah("sujiman","ib","c").
mata_kuliah("suharto","pde","b"). mata_kuliah("sudirman","pde","c"). mata_kuliah("supardi","pde","c"). mata_kuliah("suyatmi","pde","b"). mata_kuliah("sutini","pde","d").
mata_kuliah("suharto","so","b").mata_kuliah("sutini","so","a").mata_kuliah("supardi","so","a").mata_kuliah("suparni","ib","b"). mata_kuliah("suripah","ib","c").
tidak_lulus(Nama,Matakuliah,nilaimk):-
mata_kuliah(Nama,Matakuliah,"d").

GOAL

write("jawaban A"),nl,
mata_kuliah(supardi,Matakuliah_yang_dipilih_supardi,Nilai);


write("jawaban B"),nl,
write("apakah suripah mengambil kuliah pada semester ini"),nl,
mata_kuliah(suripah,Matakuliah,Nilai);


write("jawaban C"),nl,
tidak_lulus(Nama,Matakuliah,_).




