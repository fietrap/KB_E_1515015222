DOMAINS 
nama = symbol
umur = byte
name = symbol

PREDICATES
nondeterm penyangkatan_karyawan(nama)
nondeterm karyawan(nama, umur)
sakit(nama)
nondeterm direktur(name,name)
jabatan

CLAUSES 
penyangkatan_karyawan(Nama):-karyawan(Nama, Umur),
Umur<34,
not(sakit(Nama)).
karyawan("lucky liani",35).
karyawan("andre ardin",30).
karyawan("m. akbar",21).
sakit("andre ardin").
direktur(fietra, perusahaan).
jabatan:-direktur(A,B),
write(A ,"adalah direktur",B ,"\n"),
fail.
jabatan.

GOAL
penyangkatan_karyawan(Karyawan_yang_diangkat),
jabatan.
