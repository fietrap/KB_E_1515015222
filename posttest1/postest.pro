predicates
nondeterm kendaraan_favorit(symbol,symbol)
nondeterm nama(symbol)
nondeterm gemar(symbol,symbol)
nondeterm kendaraan_tersedia(symbol)

clauses
kendaraan_favorit(A,B):-
		nama(A),
		gemar(A,B),
		kendaraan_tersedia(B).

nama(fietra).
nama(gendut).
nama(lucky).

gemar(fietra, fortuner).
gemar(gendut, ninja4t).
gemar(lucky, mobiltempur).

kendaraan_tersedia(ninja4t).
kendaraan_tersedia(fortuner).
kendaraan_tersedia(mobiltempur).


goal
kendaraan_favorit(Yang_gemar, fortuner);
kendaraan_favorit(Yang_gemar, ninja4t);
kendaraan_favorit(Yang_gemar, mobiltempur).
