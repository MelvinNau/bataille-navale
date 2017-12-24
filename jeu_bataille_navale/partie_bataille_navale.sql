#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

#------------------------------------------------------------
# Table: Joueur
#------------------------------------------------------------

CREATE TABLE Joueur(
        pseudo Varchar (25) NOT NULL ,
        nom    Varchar (25) ,
        prenom Varchar (25) ,
        sexe   Varchar (25) ,
        dateN  Datetime ,
        ville  Varchar (25) ,
        mdp    Varchar (25) ,
        PRIMARY KEY (pseudo )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Partie
#------------------------------------------------------------

CREATE TABLE Partie(
        idPartie Varchar (25) NOT NULL ,
        etat     Varchar (25) ,
        pseudo   Varchar (25) ,
        PRIMARY KEY (idPartie )
)ENGINE=InnoDB;



#------------------------------------------------------------
# Table: Navire
#------------------------------------------------------------

CREATE TABLE Navire(
        idNavire   Varchar (25) NOT NULL ,
        type       Varchar (25) ,
        taille     Int ,
        lien       Varchar (250) ,
        coordProue Varchar (25) ,
        etat       Varchar (25) ,
        PRIMARY KEY (idNavire )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Carte
#------------------------------------------------------------

CREATE TABLE Carte(
        nom Varchar (25) NOT NULL ,
        PRIMARY KEY (nom )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Tour
#------------------------------------------------------------

CREATE TABLE Tour(
        idTour   Int NOT NULL ,
        idPartie Varchar (25) NOT NULL ,
        PRIMARY KEY (idTour ,idPartie )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: participe
#------------------------------------------------------------

CREATE TABLE participe(
        pseudo   Varchar (25) NOT NULL ,
        idPartie Varchar (25) NOT NULL ,
        PRIMARY KEY (pseudo ,idPartie )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: joue
#------------------------------------------------------------

CREATE TABLE joue(
        pseudo   Varchar (25) NOT NULL ,
        idTour   Int NOT NULL ,
        idPartie Varchar (25) NOT NULL ,
        nom      Varchar (25) NOT NULL ,
        PRIMARY KEY (pseudo ,idTour ,idPartie ,nom )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: pose
#------------------------------------------------------------

CREATE TABLE pose(
        idNavire Varchar (25) NOT NULL ,
        pseudo   Varchar (25) NOT NULL ,
        idPartie Varchar (25) NOT NULL ,
        PRIMARY KEY (idNavire ,pseudo ,idPartie )
)ENGINE=InnoDB;

ALTER TABLE Partie ADD CONSTRAINT FK_Partie_pseudo FOREIGN KEY (pseudo) REFERENCES Joueur(pseudo);
ALTER TABLE Tour ADD CONSTRAINT FK_Tour_idPartie FOREIGN KEY (idPartie) REFERENCES Partie(idPartie);
ALTER TABLE participe ADD CONSTRAINT FK_participe_pseudo FOREIGN KEY (pseudo) REFERENCES Joueur(pseudo);
ALTER TABLE participe ADD CONSTRAINT FK_participe_idPartie FOREIGN KEY (idPartie) REFERENCES Partie(idPartie);
ALTER TABLE joue ADD CONSTRAINT FK_joue_pseudo FOREIGN KEY (pseudo) REFERENCES Joueur(pseudo);
ALTER TABLE joue ADD CONSTRAINT FK_joue_idTour FOREIGN KEY (idTour) REFERENCES Tour(idTour);
ALTER TABLE joue ADD CONSTRAINT FK_joue_idPartie FOREIGN KEY (idPartie) REFERENCES Partie(idPartie);
ALTER TABLE joue ADD CONSTRAINT FK_joue_nom FOREIGN KEY (nom) REFERENCES Carte(nom);
ALTER TABLE pose ADD CONSTRAINT FK_pose_idNavire FOREIGN KEY (idNavire) REFERENCES Navire(idNavire);
ALTER TABLE pose ADD CONSTRAINT FK_pose_pseudo FOREIGN KEY (pseudo) REFERENCES Joueur(pseudo);
ALTER TABLE pose ADD CONSTRAINT FK_pose_idPartie FOREIGN KEY (idPartie) REFERENCES Partie(idPartie);

#------------------------------------------------------------
# Table: Partie
#------------------------------------------------------------

CREATE TABLE Partie(
        idPartie Varchar (25) NOT NULL ,
        etat     Varchar (25) ,
        pseudo   Varchar (25) ,
        PRIMARY KEY (idPartie )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Navire
#------------------------------------------------------------

CREATE TABLE Navire(
        idNavire   Varchar (25) NOT NULL ,
        type       Varchar (25) ,
        taille     Int ,
        lien       Varchar (250) ,
        coordProue Varchar (25) ,
        etat       Varchar (25) ,
        PRIMARY KEY (idNavire )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Carte
#------------------------------------------------------------

CREATE TABLE Carte(
        nom Varchar (25) NOT NULL ,
        PRIMARY KEY (nom )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Tour
#------------------------------------------------------------

CREATE TABLE Tour(
        idTour   Int NOT NULL ,
        idPartie Varchar (25) NOT NULL ,
        PRIMARY KEY (idTour ,idPartie )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: participe
#------------------------------------------------------------

CREATE TABLE participe(
        pseudo   Varchar (25) NOT NULL ,
        idPartie Varchar (25) NOT NULL ,
        PRIMARY KEY (pseudo ,idPartie )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: joue
#------------------------------------------------------------

CREATE TABLE joue(
        pseudo   Varchar (25) NOT NULL ,
        idTour   Int NOT NULL ,
        idPartie Varchar (25) NOT NULL ,
        nom      Varchar (25) NOT NULL ,
        PRIMARY KEY (pseudo ,idTour ,idPartie ,nom )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: pose
#------------------------------------------------------------

CREATE TABLE pose(
        idNavire Varchar (25) NOT NULL ,
        pseudo   Varchar (25) NOT NULL ,
        idPartie Varchar (25) NOT NULL ,
        PRIMARY KEY (idNavire ,pseudo ,idPartie )
)ENGINE=InnoDB;

ALTER TABLE Partie ADD CONSTRAINT FK_Partie_pseudo FOREIGN KEY (pseudo) REFERENCES Joueur(pseudo);
ALTER TABLE Tour ADD CONSTRAINT FK_Tour_idPartie FOREIGN KEY (idPartie) REFERENCES Partie(idPartie);
ALTER TABLE participe ADD CONSTRAINT FK_participe_pseudo FOREIGN KEY (pseudo) REFERENCES Joueur(pseudo);
ALTER TABLE participe ADD CONSTRAINT FK_participe_idPartie FOREIGN KEY (idPartie) REFERENCES Partie(idPartie);
ALTER TABLE joue ADD CONSTRAINT FK_joue_pseudo FOREIGN KEY (pseudo) REFERENCES Joueur(pseudo);
ALTER TABLE joue ADD CONSTRAINT FK_joue_idTour FOREIGN KEY (idTour) REFERENCES Tour(idTour);
ALTER TABLE joue ADD CONSTRAINT FK_joue_idPartie FOREIGN KEY (idPartie) REFERENCES Partie(idPartie);
ALTER TABLE joue ADD CONSTRAINT FK_joue_nom FOREIGN KEY (nom) REFERENCES Carte(nom);
ALTER TABLE pose ADD CONSTRAINT FK_pose_idNavire FOREIGN KEY (idNavire) REFERENCES Navire(idNavire);
ALTER TABLE pose ADD CONSTRAINT FK_pose_pseudo FOREIGN KEY (pseudo) REFERENCES Joueur(pseudo);
ALTER TABLE pose ADD CONSTRAINT FK_pose_idPartie FOREIGN KEY (idPartie) REFERENCES Partie(idPartie);
