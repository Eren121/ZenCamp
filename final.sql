#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Personne
#------------------------------------------------------------

CREATE TABLE Personne(
        IdP           Int  Auto_increment  NOT NULL ,
        nomP          Varchar (50) NOT NULL ,
        prenomP       Varchar (50) NOT NULL ,
        dateNaissance Date NOT NULL
	,CONSTRAINT Personne_PK PRIMARY KEY (IdP)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Employe
#------------------------------------------------------------

CREATE TABLE Employe(
        idEmp      Int  Auto_increment  NOT NULL ,
        salaireEmp Float NOT NULL ,
        typeEmp    Varchar (50) NOT NULL ,
        IdP        Int NOT NULL
	,CONSTRAINT Employe_PK PRIMARY KEY (idEmp)

	,CONSTRAINT Employe_Personne_FK FOREIGN KEY (IdP) REFERENCES Personne(IdP)
	,CONSTRAINT Employe_Personne_AK UNIQUE (IdP)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Directeur
#------------------------------------------------------------

CREATE TABLE Directeur(
        idDir Int  Auto_increment  NOT NULL ,
        idEmp Int NOT NULL
	,CONSTRAINT Directeur_PK PRIMARY KEY (idDir)

	,CONSTRAINT Directeur_Employe_FK FOREIGN KEY (idEmp) REFERENCES Employe(idEmp)
	,CONSTRAINT Directeur_Employe_AK UNIQUE (idEmp)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Menage
#------------------------------------------------------------

CREATE TABLE Menage(
        idMen Int  Auto_increment  NOT NULL ,
        idEmp Int NOT NULL ,
        idDir Int NOT NULL
	,CONSTRAINT Menage_PK PRIMARY KEY (idMen)

	,CONSTRAINT Menage_Employe_FK FOREIGN KEY (idEmp) REFERENCES Employe(idEmp)
	,CONSTRAINT Menage_Directeur0_FK FOREIGN KEY (idDir) REFERENCES Directeur(idDir)
	,CONSTRAINT Menage_Employe_AK UNIQUE (idEmp)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Diplome
#------------------------------------------------------------

CREATE TABLE Diplome(
        idDip  Int  Auto_increment  NOT NULL ,
        nomDip Varchar (50) NOT NULL
	,CONSTRAINT Diplome_PK PRIMARY KEY (idDip)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Client
#------------------------------------------------------------

CREATE TABLE Client(
        idCli    Int  Auto_increment  NOT NULL ,
        telCli   Varchar (50) NOT NULL ,
        emailCli Varchar (50) NOT NULL ,
        IdP      Int NOT NULL
	,CONSTRAINT Client_PK PRIMARY KEY (idCli)

	,CONSTRAINT Client_Personne_FK FOREIGN KEY (IdP) REFERENCES Personne(IdP)
	,CONSTRAINT Client_Personne_AK UNIQUE (IdP)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Emplacement
#------------------------------------------------------------

CREATE TABLE Emplacement(
        idEmpl  Int  Auto_increment  NOT NULL ,
        prixEmp Int NOT NULL
	,CONSTRAINT Emplacement_PK PRIMARY KEY (idEmpl)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: TypeHab
#------------------------------------------------------------

CREATE TABLE TypeHab(
        idTyHab   Int  Auto_increment  NOT NULL ,
        nbPlaces  Int NOT NULL ,
        prixTyHab Int NOT NULL
	,CONSTRAINT TypeHab_PK PRIMARY KEY (idTyHab)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Assurance
#------------------------------------------------------------

CREATE TABLE Assurance(
        idAss        Int  Auto_increment  NOT NULL ,
        nomAss       Varchar (50) NOT NULL ,
        dateEcheance Date NOT NULL
	,CONSTRAINT Assurance_PK PRIMARY KEY (idAss)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Chalet
#------------------------------------------------------------

CREATE TABLE Chalet(
        idCha   Int  Auto_increment  NOT NULL ,
        prixCha Int NOT NULL ,
        idEmpl  Int NOT NULL
	,CONSTRAINT Chalet_PK PRIMARY KEY (idCha)

	,CONSTRAINT Chalet_Emplacement_FK FOREIGN KEY (idEmpl) REFERENCES Emplacement(idEmpl)
	,CONSTRAINT Chalet_Emplacement_AK UNIQUE (idEmpl)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Saison
#------------------------------------------------------------

CREATE TABLE Saison(
        idSaison          Int  Auto_increment  NOT NULL ,
        nomSaison         Varchar (50) NOT NULL ,
        pourcentageSaison Int NOT NULL ,
        debutSaison       Date NOT NULL ,
        finSaison         Date NOT NULL
	,CONSTRAINT Saison_PK PRIMARY KEY (idSaison)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Animateur
#------------------------------------------------------------

CREATE TABLE Animateur(
        idAni Int  Auto_increment  NOT NULL ,
        idEmp Int NOT NULL
	,CONSTRAINT Animateur_PK PRIMARY KEY (idAni)

	,CONSTRAINT Animateur_Employe_FK FOREIGN KEY (idEmp) REFERENCES Employe(idEmp)
	,CONSTRAINT Animateur_Employe_AK UNIQUE (idEmp)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Activite
#------------------------------------------------------------

CREATE TABLE Activite(
        idAct  Int  Auto_increment  NOT NULL ,
        nomAct Varchar (50) NOT NULL
	,CONSTRAINT Activite_PK PRIMARY KEY (idAct)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Seance
#------------------------------------------------------------

CREATE TABLE Seance(
        idSean    Int  Auto_increment  NOT NULL ,
        dureeSean Int NOT NULL ,
        dateSean  Datetime NOT NULL ,
        idAct     Int NOT NULL
	,CONSTRAINT Seance_PK PRIMARY KEY (idSean)

	,CONSTRAINT Seance_Activite_FK FOREIGN KEY (idAct) REFERENCES Activite(idAct)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Equipement
#------------------------------------------------------------

CREATE TABLE Equipement(
        idEq  Int  Auto_increment  NOT NULL ,
        nomEQ Varchar (50) NOT NULL
	,CONSTRAINT Equipement_PK PRIMARY KEY (idEq)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Reparateur
#------------------------------------------------------------

CREATE TABLE Reparateur(
        idRep Int  Auto_increment  NOT NULL ,
        idEmp Int NOT NULL ,
        idDir Int NOT NULL
	,CONSTRAINT Reparateur_PK PRIMARY KEY (idRep)

	,CONSTRAINT Reparateur_Employe_FK FOREIGN KEY (idEmp) REFERENCES Employe(idEmp)
	,CONSTRAINT Reparateur_Directeur0_FK FOREIGN KEY (idDir) REFERENCES Directeur(idDir)
	,CONSTRAINT Reparateur_Employe_AK UNIQUE (idEmp)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Secretaire
#------------------------------------------------------------

CREATE TABLE Secretaire(
        idSec Int  Auto_increment  NOT NULL ,
        idEmp Int NOT NULL
	,CONSTRAINT Secretaire_PK PRIMARY KEY (idSec)

	,CONSTRAINT Secretaire_Employe_FK FOREIGN KEY (idEmp) REFERENCES Employe(idEmp)
	,CONSTRAINT Secretaire_Employe_AK UNIQUE (idEmp)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Accompagnateur
#------------------------------------------------------------

CREATE TABLE Accompagnateur(
        idAcc Int  Auto_increment  NOT NULL ,
        idCli Int NOT NULL ,
        IdP   Int NOT NULL
	,CONSTRAINT Accompagnateur_PK PRIMARY KEY (idAcc)

	,CONSTRAINT Accompagnateur_Client_FK FOREIGN KEY (idCli) REFERENCES Client(idCli)
	,CONSTRAINT Accompagnateur_Personne0_FK FOREIGN KEY (IdP) REFERENCES Personne(IdP)
	,CONSTRAINT Accompagnateur_Personne_AK UNIQUE (IdP)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: dossier ?
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Posseder-dip
#------------------------------------------------------------

CREATE TABLE Posseder_dip(
        idEmp Int NOT NULL ,
        idDip Int NOT NULL
	,CONSTRAINT Posseder_dip_PK PRIMARY KEY (idEmp,idDip)

	,CONSTRAINT Posseder_dip_Employe_FK FOREIGN KEY (idEmp) REFERENCES Employe(idEmp)
	,CONSTRAINT Posseder_dip_Diplome0_FK FOREIGN KEY (idDip) REFERENCES Diplome(idDip)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Occuper
#------------------------------------------------------------

CREATE TABLE Occuper(
        idEmpl          Int NOT NULL ,
        dateOccuperEmpl Date NOT NULL ,
        idCli           Int
	,CONSTRAINT Occuper_PK PRIMARY KEY (idEmpl)

	,CONSTRAINT Occuper_Emplacement_FK FOREIGN KEY (idEmpl) REFERENCES Emplacement(idEmpl)
	,CONSTRAINT Occuper_Client0_FK FOREIGN KEY (idCli) REFERENCES Client(idCli)
	,CONSTRAINT Occuper_Client_AK UNIQUE (idCli)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Est dans
#------------------------------------------------------------

CREATE TABLE Est_dans(
        idEmpl       Int NOT NULL ,
        date_Ty_Empl Date NOT NULL ,
        idTyHab      Int
	,CONSTRAINT Est_dans_PK PRIMARY KEY (idEmpl)

	,CONSTRAINT Est_dans_Emplacement_FK FOREIGN KEY (idEmpl) REFERENCES Emplacement(idEmpl)
	,CONSTRAINT Est_dans_TypeHab0_FK FOREIGN KEY (idTyHab) REFERENCES TypeHab(idTyHab)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Posseder_ass
#------------------------------------------------------------

CREATE TABLE Posseder_ass(
        idCli Int NOT NULL ,
        idAss Int
	,CONSTRAINT Posseder_ass_PK PRIMARY KEY (idCli)

	,CONSTRAINT Posseder_ass_Client_FK FOREIGN KEY (idCli) REFERENCES Client(idCli)
	,CONSTRAINT Posseder_ass_Assurance0_FK FOREIGN KEY (idAss) REFERENCES Assurance(idAss)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Posseder_hab
#------------------------------------------------------------

CREATE TABLE Posseder_hab(
        idCli   Int NOT NULL ,
        idTyHab Int
	,CONSTRAINT Posseder_hab_PK PRIMARY KEY (idCli)

	,CONSTRAINT Posseder_hab_Client_FK FOREIGN KEY (idCli) REFERENCES Client(idCli)
	,CONSTRAINT Posseder_hab_TypeHab0_FK FOREIGN KEY (idTyHab) REFERENCES TypeHab(idTyHab)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: S-inscrire-cli
#------------------------------------------------------------

CREATE TABLE S_inscrire_cli(
        idCli          Int NOT NULL ,
        idSean         Int NOT NULL ,
        date_Insc_Sean Date NOT NULL
	,CONSTRAINT S_inscrire_cli_PK PRIMARY KEY (idCli,idSean)

	,CONSTRAINT S_inscrire_cli_Client_FK FOREIGN KEY (idCli) REFERENCES Client(idCli)
	,CONSTRAINT S_inscrire_cli_Seance0_FK FOREIGN KEY (idSean) REFERENCES Seance(idSean)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Animer
#------------------------------------------------------------

CREATE TABLE Animer(
        idSean Int NOT NULL ,
        idAni  Int NOT NULL
	,CONSTRAINT Animer_PK PRIMARY KEY (idSean,idAni)

	,CONSTRAINT Animer_Seance_FK FOREIGN KEY (idSean) REFERENCES Seance(idSean)
	,CONSTRAINT Animer_Animateur0_FK FOREIGN KEY (idAni) REFERENCES Animateur(idAni)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Louer_eq
#------------------------------------------------------------

CREATE TABLE Louer_eq(
        idEq        Int NOT NULL ,
        dateLouerEq Date NOT NULL ,
        idCli       Int
	,CONSTRAINT Louer_eq_PK PRIMARY KEY (idEq)

	,CONSTRAINT Louer_eq_Equipement_FK FOREIGN KEY (idEq) REFERENCES Equipement(idEq)
	,CONSTRAINT Louer_eq_Client0_FK FOREIGN KEY (idCli) REFERENCES Client(idCli)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Reparer
#------------------------------------------------------------

CREATE TABLE Reparer(
        idEq    Int NOT NULL ,
        idRep   Int NOT NULL ,
        DateRep Date NOT NULL
	,CONSTRAINT Reparer_PK PRIMARY KEY (idEq,idRep)

	,CONSTRAINT Reparer_Equipement_FK FOREIGN KEY (idEq) REFERENCES Equipement(idEq)
	,CONSTRAINT Reparer_Reparateur0_FK FOREIGN KEY (idRep) REFERENCES Reparateur(idRep)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Nettoyer
#------------------------------------------------------------

CREATE TABLE Nettoyer(
        idTyHab  Int NOT NULL ,
        idMen    Int NOT NULL ,
        DateNett Date NOT NULL
	,CONSTRAINT Nettoyer_PK PRIMARY KEY (idTyHab,idMen)

	,CONSTRAINT Nettoyer_TypeHab_FK FOREIGN KEY (idTyHab) REFERENCES TypeHab(idTyHab)
	,CONSTRAINT Nettoyer_Menage0_FK FOREIGN KEY (idMen) REFERENCES Menage(idMen)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: S_inscrire_acc
#------------------------------------------------------------

CREATE TABLE S_inscrire_acc(
        idSean             Int NOT NULL ,
        idAcc              Int NOT NULL ,
        date_insc_sean_acc Date NOT NULL
	,CONSTRAINT S_inscrire_acc_PK PRIMARY KEY (idSean,idAcc)

	,CONSTRAINT S_inscrire_acc_Seance_FK FOREIGN KEY (idSean) REFERENCES Seance(idSean)
	,CONSTRAINT S_inscrire_acc_Accompagnateur0_FK FOREIGN KEY (idAcc) REFERENCES Accompagnateur(idAcc)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Louer_hab
#------------------------------------------------------------

CREATE TABLE Louer_hab(
        idCli        Int NOT NULL ,
        DateLouerHab Date NOT NULL ,
        idTyHab      Int
	,CONSTRAINT Louer_hab_PK PRIMARY KEY (idCli)

	,CONSTRAINT Louer_hab_Client_FK FOREIGN KEY (idCli) REFERENCES Client(idCli)
	,CONSTRAINT Louer_hab_TypeHab0_FK FOREIGN KEY (idTyHab) REFERENCES TypeHab(idTyHab)
)ENGINE=InnoDB;

