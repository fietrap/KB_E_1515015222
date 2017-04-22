DOMAINS
nama = symbol/*modul 4*/
harga = ulong/*modul 4*/
mesin_kendaraan = merk(mesin,name)/*modul 5 */
mesin,name = symbol/*modul 5 */

PREDICATES
nondeterm dapat_membeli(symbol, symbol)/* langsung ambil modul 1 dan 2*/
nondeterm orang(symbol)/*modul 2*/
nondeterm mobil(symbol)/*modul 2*/
suka(symbol, symbol)/*modul 2*/
dijual(symbol)/*modul 2*/
nondeterm keren(symbol,symbol)/*modul 3*/
nondeterm car_baru(nama)/*modul 4*/
nondeterm car(nama,harga)/*modul 4*/
rusak(nama) /*modul 4*/
nondeterm punya(name,mesin_kendaraan)/*modul 5 */
nondeterm roda_empat(symbol)/*modul 6 */
cetak_roda_empat/*modul 6 */

CLAUSES
roda_empat("atoz")./*modul 6 */
roda_empat("kijang")./*modul 6 */
cetak_roda_empat:-/*modul 6 */
roda_empat(A),/*modul 6 */
write(A),nl,/*modul 6 */
fail./*modul 6 */
cetak_roda_empat./*modul 6 */
dapat_membeli(X,Y):-orang(X),/*modul 1 dan 2*/
mobil(Y),/*modul 1 dan 2*/
suka(X,Y),/*modul 1 dan 2*/
dijual(Y)./*modul 1 dan 2*/
orang(nur)./*modul 1 dan 2*/
orang(yudi)./*modul 1 dan 2*/
orang(dian)./*modul 1 dan 2*/
orang(heni)./*modul 1 dan 2*/
mobil(atoz)./*modul 1 dan 2*/
mobil(kijang)./*modul 1 dan 2*/
suka(dian, atoz)./*modul 1 dan 2*/
suka(yudi, pecel)./*modul 1 dan 2*/
suka(heri, buku)./*modul 1 dan 2*/
suka(nur, komputer)./*modul 1 dan 2*/
dijual(kijang)./*modul 1 dan 2*/
dijual(atoz)./*modul 1 dan 2*/
dijual(buku)./*modul 1 dan 2 */
keren(tarjo,mobil)./*modul 3  */
car_baru(Nama):-/*modul 4*/
car(Nama,Harga),/*modul 4*/
Harga<2000000,/*modul 4*/
not(rusak(Nama))./*modul 4*/
car("atoz",1900000)./*modul 4*/
car("kijang",1500000)./*modul 4*/
rusak("kijang")./*modul 4*/
punya(dian,merk("jaguard","dian"))./*modul 5 */

GOAL
write("Goal modul 1 dan 2"),nl,
dapat_membeli(Siapa,Apa);
write("Goal modul 3"),nl,
keren(Orang,mobil);
write("Goal modul 4"),nl,
car_baru(Mobil_rusak);
write("Goal modul 5"),nl,
punya(dian,Mesin_Kendaraan);
write("Goal modul 6"),nl,
cetak_roda_empat.