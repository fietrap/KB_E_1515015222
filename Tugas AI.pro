PREDICATES
nondeterm siapa_beli(symbol, symbol)
nondeterm orang(symbol)
nondeterm buah(symbol)
dijual(symbol)
CLAUSES
siapa_beli(X,Y):-orang(X),
buah(Y),
dijual(Y).
orang(nur).
orang(yudi).
buah(pepaya).
buah(kelapa).
dijual(pepaya).
dijual(kelapa).
GOAL
siapa_beli(nur,pepaya).