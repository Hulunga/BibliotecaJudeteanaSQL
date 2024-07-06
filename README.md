Esti administratorul bazei de date de la biblioteca judeteana din orasul tau. Pentru o mai buna gestiune a
cartilor si a imprumuturilor realizezi o baza de date formata din urmatoarele tabele:
AUTOR(ID, NumeLiteral(Alias), NumeReal, DataNasterii, DataDeces)
CATEGORII(ID, DenumireCategorie) (ex: Fictiune, Biografii si memorii, Istorie, Roman Istoric, Poezie)
CARTE(ID, Titlu, IdAutor, IdCategorie, NumeSerie, NrVolum, DataPrimeiPublicari)
INVENTAR(ID, IdCarte, Total, NrDisponilPentruImprumut, NrImprumutat)
ABONAT(ID, Nume, Adresa, DataNasterii)
IMPRUMUT(ID, IdAbonat, IdCarte, DataImprumut, DataRealaRetur, NrNotificari)

1. Redacteaza instructiunile SQL care sa realizeze:
a. Creare baza de date BibliotecaJudeteana
b. Crearea tabelelor din descriere. Utilizeaza Primary Key, Foreign Key, NULL, NOT NULL si alte
constrangeri.
c. Inserarea a cel putin 5 linii in tabelele AUTOR, CATEGORII, ABONAT si cel putin 20 de linii in
tabelele CARTE, INVENTAR, IMPRUMUT. Ai nevoie de informatii cat mai variate a.i. exercitiile
urmatoare sa aiba rezultate.
2. Unul din abonati doreste sa imprumute 3 carti din categoria „Biografii si memorii” publicate in anul
nasterii sale. Utilizeaza subintereogari pentru a afla primele 3 carti care corespund.
3. Directorul bibliotecii are nevoie sa ii realizezi un raport in care sa vada urmatoarele informatii:
a. Numele sub care un autor a publicat carti
b. Numele real al autorului
c. Titlul cartii scrise
d. Numele seriei din care face parte cartea
e. Categoria cartii
Realizeaza raportul de mai sus intr-o vedere utilizand join intre tabelele necesare si denumeste
coloanele exact ca mai sus.
4. Directorul bibliotecii are nevoie sa stie care sunt abonatii care nu au returnat catile imprumutate in
maxim 30 de zile de la data imprumutului.
Realizeaza o procedura stocata care sa afiseze informatiile necesare.
5. Realizeza un trigger care sa actualizeze tabelul Inventar, coloana Imprumutate atunci cand o carte
este imprumutata.
