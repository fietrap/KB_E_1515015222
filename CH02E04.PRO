/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E04.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  male(symbol) - nondeterm (o)
  female(symbol) - nondeterm (o)
  ibu(symbol,symbol)- nondeterm (o,i)
  cucu(symbol,symbol)- nondeterm (o,i)
  adik(symbol,symbol)- nondeterm (o,i)
  kake(symbol,symbol)- nondeterm (o,i)
  
clauses
  male(john).
  male(james).
  male(peter).

  female(sue).
  female(mary).
  female(ann).

  ibu(mary,james).
  ibu(ann,john).
  ibu(ann,sue).
  cucu(john,peter).
  adik(sue,john).
  kake(peter,john).

goal
  ibu(Ibu,james),
  cucu(Cucu,peter),
  adik(Adik,john),
  kake(Kake,john).
