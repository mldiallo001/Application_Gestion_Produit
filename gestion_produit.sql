/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  29/07/2018 3:59:57 PM                    */
/*==============================================================*/


drop table if exists PRODUIT;

drop table if exists UTILISATEUR;

drop table if exists VENTE;

/*==============================================================*/
/* Table : PRODUIT                                              */
/*==============================================================*/
CREATE TABLE PRODUIT 
(
   ID 				int not null AUTO_INCREMENT,
   CODE_PRODUIT 	varchar(20) not null,
   REFERENCE 		varchar(50) not null,
   DESIGNATION 		varchar(52) not null,
   RANGEMENT 		varchar(50) DEFAULT null,
   FOURNISSEUR 		varchar(56) DEFAULT null,
   REMISE 			int not null,
   PRIX 			int not null,
   STOCK 			int DEFAULT null,
   PRIMARY KEY (ID)
) ;

/*==============================================================*/
/* Table : UTILISATEUR                                          */
/*==============================================================*/
CREATE TABLE UTILISATEUR 
(
   ID 			int not null AUTO_INCREMENT,
   ID_USER 		int not null,
   USERNAME 	varchar(50) not null,
   PASSWORD 	varchar(50) not null,
   FONCTION	 	varchar(50) not null,
   PRIMARY KEY (ID)
);

/*==============================================================*/
/* Table : VENTE                                                */
/*==============================================================*/
CREATE TABLE VENTE
(
   ID 				int not null AUTO_INCREMENT,
   NUM_FACTURE 		int not null,
   CODE_PRODUIT 	int not null,
   REFERENCE 		varchar(55) not null,
   PRIX_VENTE 		int not null,
   STOCK_SORTIE 	int not null,
   SUBTOTAL 		int not null,
   PRIMARY KEY (ID)
);