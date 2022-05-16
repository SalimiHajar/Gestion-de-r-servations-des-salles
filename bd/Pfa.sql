drop database if exists Pfa;

create database if not exists Pfa;
use Pfa;

create table niveau (
    CodeNiveau varchar(255) primary key,
    IntituleNiveau varchar(255)
    
);
create table Universite (
       IdUniversite varchar(255) primary key,
       IntituleUniversite varchar(255),
       Date_Creation date,
       Fondateur varchar(255),
       Filieres varchar(255),
       Adresse varchar(255)
       );

      create table etudiant (
       Idetudiant int(10) auto_increment primary key,
       NomPrenom varchar(255),
       CIN varchar(255), 
       IdNiveau varchar(255),
       Groupe varchar(255),
       SousGroupe int(10),
       NomUniversite varchar(255)
       );

/* create table immobilisation (
        IdImmob int(50) auto_increment primary key,
        Type varchar(255),
        Famille varchar(255),
        Article varchar(255),
        -- Descriptif text,
        NumSerie varchar(255),
        AnneeReception numeric (4),
        Date_Affectation date,
        Date_Fin date,
        Delai varchar(255),  
        Ref_Achat varchar(255),
        PrixAchat numeric (11.2),
        NumFacture varchar(255),
        Fournisseur varchar(255),
        NomPrenom varchar(255),
        CodeBureau varchar(10),
        IdCat int (50)
        
        
);
create table CatImmob(
   IdCat int (50) auto_increment primary key,
   Famille varchar(255)
    
);*/

create table utilisateur(
       IdUser int(10) auto_increment primary key,
       Login varchar(255),
       Email varchar(255),
       Role varchar(255),
       Etat int(1),
       Passwd varchar(255) );
    
       
-- ALTER TABLE ORDERS ADD FOREIGN KEY (Customer_SID) REFERENCES CUSTOMER (SID);
ALTER TABLE etudiant ADD FOREIGN KEY (NomUniversite) REFERENCES Universite(IdUniversite);
-- ALTER TABLE immobilisation ADD FOREIGN KEY (CodeBureau) REFERENCES Bureau(IdBureau);
-- ALTER TABLE immobilisation ADD FOREIGN KEY (IdCat) REFERENCES CatImmob(IdCat);
ALTER TABLE etudiant ADD FOREIGN KEY (IdNiveau) REFERENCES niveau(CodeNiveau);

INSERT INTO Niveau(CodeNiveau,IntituleNiveau) VALUES
('1A','Premiere annee'),
('DG','DEUG'),
('Lce','Licence'),
('AP 1','Première Annee Preparatoire'),
('AP 2','Deuxième Annee Préparatoire'),
('IIR 3','3eme Annee Ingenierie Informatique et Reseau'),
('IIR 4','4eme Annee Ingenierie Informatique et Reseau'),
('5 MIAGE','5eme Annee Master Apllique'),
('GC 1','1ere Génie Civil'),
('GC 2','2eme Génie Civil'),
('GC 3','3eme Génie Civil'),
('GC 4','4eme Génie Civil'),
('GC 5','5eme Génie Civil');



INSERT INTO Universite(IdUniversite,IntituleUniversite,Date_Creation,Fondateur,Filieres,Adresse) VALUES

('ibn Zorh','Universite Ibn Zohr','1945-06-08','Mr Mohammed Hajji','Finance,Comptabilite, Management, Ingenierie industrielle,medecine 
 Ingenierie civil', '15 Quartier Fleuri Haasan II'),
('ibn Tfl','Universite Ibn Tofail','1960-10-31','Mr Idriss bennani','Finance,Comptabilite, Management, Ingenierie informatique, 
 Ingenierie civil', '20 Rue Ali Arsalane bouregreg');

INSERT INTO personnel (NomPrenom,CIN,IdNiveau,Groupe,SousGroupe,NomUniversite) VALUES
('KADIRI Rachid','A33456','IIR 3','A',2,'ibn Zohr'),
('Gherbaoui Salma','GA3456','CG 5','C',1,'ibn Tfl'),
('Fadili Mouna','J7889','AP 2','A',2,'ibn Zohr'),
('BENHSSAEN Ouissal','G690876','5 MIAGE','A',2,'ibn Tfl'),
('EL ALAOUI Lalla Ryme','RF6657','5 MIAGE','A',2,'ibn Tfl');

INSERT INTO utilisateur (Login,Email,Role,Etat,Passwd) VALUES
('admin1','ben.ouissal@gmail.com','ADMIN',1,md5('123')),
('user2','benhssaen.ouiss@gmail.com','ADMIN',0,md5('123')),
('admin2','b.ouissal@gmail.com','USER',0,md5('123')),
('user3','ouissal@gmail.com','USER',1,md5('123')),
('admin','ouiss@gmail.com','USER',1,md5('123')),
('user1','ouiam.ben@gmail.com','USER',0,md5('123'));



/*INSERT INTO immobilisation (Type,Famille,Article,NumSerie,AnneeReception,Date_Affectation,Date_Fin,Delai,Ref_Achat,PrixAchat,NumFacture,Fournisseur,NomPrenom,CodeBureau) VALUES
                           

('MOBILIER DE BUREAU','Bureau','Bureau  avec retour integre au plateau','WOLGT5EL4E1045917',2013,'2013-10-31','2014-10-31','12 mois','BC n 05/AMDL/2013',12000.00,'N1632/2013','Alpha Bureau s.a.r.l.','RACHID','B0003'),
('MOBILIER DE BUREAU','Bureau','Bureau  avec retour integre au plateau','WOLGT5EL4E1045917',2013,'2013-10-31','2014-10-31','12 mois','BC n 05/AMDL/2013',12000.00,'N1632/2013','Alpha Bureau s.a.r.l.','RACHID','B0003'),

('MOBILIER DE BUREAU','Bureau','Bureau  avec retour integre au plateau','WOLGT5EL4E1045917',2013,'2013-10-31','2014-10-31','12 mois','BC n 05/AMDL/2013',12000.00,'N1632/2013','Alpha Bureau s.a.r.l.','RACHID','B0003'),
('MOBILIER DE BUREAU','Bureau','Bureau  avec retour integre au plateau','WOLGT5EL4E1045917',2013,'2013-10-31','2014-10-31','12 mois','BC n 05/AMDL/2013',12000.00,'N1632/2013','Alpha Bureau s.a.r.l.','RACHID','B0003');

INSERT INTO CatImmob (Famille ) values
('Bureau'),
('Fauteuil'),
('Table'),
('Voiture');
*/


select * from Universite;
-- select * from immobilisation;
-- select * from CatImmob;
select * from etudiant;
select * from utilisateur;
select Login,Passwd from utilisateur;


















