-- Script to insert data into the E-Commerce Tables

-- ------------------------------
-- Insert into Supplier table
-- ------------------------------

INSERT INTO `ecommerce`.`supplier`
(`RegisteredName`,
`EIN`,
`Address`,
`ZipCode`,
`Phone`,
`Email`)
VALUES
("Integer In Institute","886854058","Ap #105-7569 Molestie St.","27726","(128) 331-4755","gravida.praesent.eu@icloud.edu"),
  ("Nisi Incorporated","679449480","Ap #392-8121 Nunc St.","A6K 1H5","(619) 671-5214","diam@aol.couk"),
  ("Risus LLP","536028236","P.O. Box 694, 6768 Vivamus Road","3627","(319) 787-7227","duis@protonmail.net"),
  ("Vivamus Nibh Associates","470762432","Ap #609-1273 Egestas. Ave","356045","(348) 233-7488","sollicitudin.commodo@google.couk"),
  ("Neque Nullam LLP","913638241","P.O. Box 804, 6328 Tellus. Avenue","0762","(955) 876-6409","eget@google.org"),
  ("Curabitur Vel LLP","266366321","P.O. Box 319, 6229 Ipsum Rd.","22764","(789) 706-3863","sed@protonmail.net"),
  ("Consectetuer Incorporated","173267455","Ap #594-9661 Aenean Ave","24682","(583) 853-0731","morbi.tristique.senectus@hotmail.edu"),
  ("Amet Limited","985758378","Ap #725-3314 Malesuada Ave","3571","(533) 806-1267","nunc@aol.org"),
  ("Fusce Dolor Ltd","882373489","4787 Cum St.","181572","(959) 758-6878","malesuada@yahoo.ca"),
  ("Vel Foundation","358610636","8484 Rutrum Av.","13816","(248) 479-4886","mauris.rhoncus@yahoo.ca");
  
-- --------------------------------
-- Insert into Seller table
-- --------------------------------

INSERT INTO `ecommerce`.`seller`
(`RegisteredName`,
`EIN`,
`ZipCode`,
`Address`,
`Phone`,
`Email`)
VALUES
  ("A Odio Semper Limited","223082806","P.O. Box 830, 7063 Placerat, St.","7764","(612) 862-1245","cursus.vestibulum@google.net"),
  ("Enim Consequat Purus Corp.","772107472","P.O. Box 494, 3188 Ullamcorper Road","822372","(313) 514-4415","non.magna@outlook.couk"),
  ("Integer Corporation","887617545","553-7465 Vel Avenue","875648","(128) 675-7955","accumsan.interdum@hotmail.org"),
  ("Habitant Morbi Tristique Institute","813923284","Ap #825-2271 At, Street","09367","(201) 315-4133","a.odio@protonmail.org"),
  ("Pellentesque Sed Corp.","566461773","5213 Consectetuer Road","338496","(754) 268-6468","tempor@google.ca"),
  ("Sodales Purus In Associates","091115588","1545 Id Ave","11602","(716) 795-9369","non.lobortis@aol.couk"),
  ("Proin Institute","168187708","Ap #244-5267 Vel Avenue","3647","(171) 783-2743","sapien.molestie.orci@google.couk"),
  ("Proin Eget Inc.","032677372","6560 Integer Rd.","78-865","(572) 424-1865","nulla.tempor.augue@aol.couk"),
  ("Tempus Scelerisque Incorporated","531827650","388-9241 Eleifend Rd.","26108","(846) 280-9876","sem.consequat@outlook.net"),
  ("Egestas Blandit Nam Company","361794876","822-5609 Commodo St.","8661","(672) 554-4496","suspendisse.ac.metus@outlook.couk");
  
-- --------------------------------
-- Insert into Product table
-- --------------------------------

INSERT INTO `ecommerce`.`product`
(`Category`,
`Description`,
`Price`,
`Quantity`,
`Weight`)
VALUES
  ("Sunroof Mirrors","a, scelerisque sed, sapien.","932.71",47,"232.26"),
  ("Fender Fender","laoreet lectus","205.00",3,"635.98"),
  ("Head light","molestie tortor nibh sit","920.08",50,"635.96"),
  ("Number plate","orci","838.94",32,"259.90"),
  ("Roof Sunroof","auctor vitae, aliquet","526.41",27,"326.42"),
  ("Wheels Hubcap","urna. Vivamus molestie dapibus","464.26",18,"282.44"),
  ("shell Hood","eu dolor egestas rhoncus.","285.76",26,"899.34"),
  ("Fender liners","gravida sagittis. Duis","96.20",47,"619.72"),
  ("bumper Rear","eu neque pellentesque massa lobortis","402.86",43,"911.69"),
  ("Doors Door","a ultricies adipiscing,","128.95",6,"585.99");
  
-- --------------------------------
-- Insert into PersonClient table
-- --------------------------------

INSERT INTO `ecommerce`.`personclient`
(`ITIN`,
`FirstName`,
`MiddleName`,
`LastName`,
`Bdate`,
`Sex`,
`Street`,
`City`,
`ZipCode`,
`Phone`)
VALUES
  ("70869140513","Ina","Monroe","Weber","1983-10-15","M","267-7603 Malesuada St.","Kon Tum","50109","(771) 567-1638"),
  ("98457465878","Rebecca","Becker","French","1997-02-27","M","P.O. Box 500, 2086 Ante Avenue","Serangoon","664737","(382) 682-0583"),
  ("18133479766","Hamilton","Griffith","Wheeler","1992-10-31","M","177-487 Mauris Rd.","Mardan","59162","(537) 986-5765"),
  ("11713344892","Alice","Mccullough","Miles","1995-05-27","M","106-5395 Lobortis Road","Berlin","675962","(623) 482-6863"),
  ("75817165446","Nerea","Zimmerman","Lynch","1974-04-17","M","9905 Donec Road","Heredia","73245","(646) 365-0514"),
  ("57195655350","Xandra","Dalton","Hays","1994-06-14","M","Ap #764-4856 Non, St.","Puntarenas","659562","(563) 295-1592"),
  ("38989812379","Leandra","Jimenez","York","1977-11-11","F","Ap #564-8160 Nec, St.","Kusa","3087","(172) 296-1268"),
  ("46842936738","Fatima","Carlson","Perez","1974-02-08","F","Ap #393-6291 Mauris St.","Kapfenberg","2111","(411) 629-4818"),
  ("23885467394","Micah","Curtis","Mccarthy","1993-07-25","M","3950 Ligula Avenue","Carmen de Bolivar","6785","(394) 869-5678"),
  ("57911643780","Emerald","Finley","Shelton","1990-05-22","M","P.O. Box 450, 1409 Dictum Av.","Judenburg","54978","(538) 805-3377"),
  ("76245276286","Medge","Hinton","Cardenas","1975-07-11","M","719-2707 Maecenas Rd.","Volgograd","17458","(153) 853-9795"),
  ("65350401673","Jin","Curtis","Coleman","1996-07-29","M","Ap #327-4658 Et Avenue","Guápiles","5740","(371) 379-0825"),
  ("60177537498","Plato","Reyes","Barber","1996-05-05","M","Ap #678-8479 Mauris St.","Canberra","7795","(178) 782-1930"),
  ("89140364314","Xyla","Rojas","Emerson","1974-01-11","M","449-3018 Dui Ave","Kahramanmaraş","72-36","(563) 862-4917"),
  ("55105609189","Uriel","Carpenter","Perry","1979-08-18","F","908-5403 Massa. Rd.","North Jakarta","3696","(572) 583-3808"),
  ("80121255096","Erica","Weaver","Noble","1984-01-27","M","Ap #460-5324 Amet St.","Port Blair","S4W 2N6","(285) 174-1363"),
  ("44671842043","Anjolie","Townsend","Ramos","1986-12-18","F","P.O. Box 166, 7016 Congue. Rd.","Guizhou","G9R 8Y7","(195) 406-1803"),
  ("43882840047","Ray","Mcpherson","Roberson","1983-10-24","M","Ap #563-308 Sed Road","Wals-Siezenheim","941225","(678) 548-8560"),
  ("48509487167","Upton","Sutton","Mccarty","1993-07-05","M","Ap #582-1352 Eleifend Rd.","Baubau","46747","(314) 812-5514"),
  ("32482489711","Kelsie","Foster","Vance","1971-02-05","F","500-5952 Lacinia Road","Sungei Kadut","08215","(737) 578-2561");
  
-- --------------------------------
-- Insert into Clients
-- --------------------------------

INSERT INTO `ecommerce`.`clients`
(`idClient`,
`Email`)
VALUES
(1,"lorem@icloud.org"),
(2,"malesuada.id@hotmail.com"),
(3,"donec.luctus.aliquet@yahoo.ca"),
(4,"placerat.cras.dictum@google.org"),
(5,"nunc.sed@google.org"),
(6,"non.sollicitudin@google.edu"),
(7,"fermentum.fermentum@icloud.ca"),
(8,"ante.maecenas.mi@outlook.com"),
(9,"phasellus.in@yahoo.net"),
(10,"nulla@hotmail.net"),
(11,"at@icloud.org"),
(12,"lacus.nulla@hotmail.com"),
(13,"egestas.nunc.sed@icloud.com"),
(14,"nulla@protonmail.net"),
(15,"nam.ligula@google.org"),
(16,"a@protonmail.couk"),
(17,"semper.et@protonmail.ca"),
(18,"placerat.orci@protonmail.edu"),
(19,"nunc@hotmail.com"),
(20,"ac.metus@protonmail.net");

-- --------------------------------
-- Insert into Type of Payment table
-- --------------------------------

INSERT INTO `ecommerce`.`type of payment`
(`idClient`,
`CardNumber`,
`CardholderName`,
`ExpirationDate`,
`CreditCardCompany`)
VALUES
  (1,"653487 582364 2327","Colton York","2028-08-30","Nubank"),
  (2,"378567468476671","Brady Blair","2026-07-08","Nubank"),
  (3,"4508 3535 3338 7387","Sydney Puckett","2029-04-20","Bradesco"),
  (4,"6767 4145 8194 4630","Ivy Sears","2026-01-05","Bank of America"),
  (5,"647373 388889 7794","Rhea Medina","2024-10-28","Itaú"),
  (6,"503834473592186238","Cain Huffman","2026-03-30","Bank of America"),
  (7,"6709 4585 3266 4699","Hashim Gilliam","2027-07-22","Bradesco"),
  (8,"2149 825561 72297","Wesley Lindsay","2027-06-22","U.S. Bank"),
  (9,"4903415785847292","Haley Molina","2028-06-03","Bradesco"),
  (10,"558755 7651324238","Amity Hart","2027-07-22","Capital One"),
  (11,"6763 987484 66742","Benedict Berger","2027-10-08","Itaú"),
  (12,"491 35745 67264 171","Abraham Guthrie","2025-12-06","Capital One"),
  (13,"305165945899157","Connor Shannon","2029-11-11","Nubank"),
  (14,"302833266926239","Fletcher Travis","2029-05-12","Chase"),
  (15,"3654 523723 28448","Celeste Barlow","2027-06-22","Bank of America"),
  (16,"651 63384 21864 860","Kermit Heath","2029-06-27","U.S. Bank"),
  (17,"644623 842932 2835","Alvin Riley","2023-01-30","American Express"),
  (18,"4485368738426","Camden Prince","2028-08-11","Synchrony"),
  (19,"491125 5713767547","Derek Vance","2026-07-23","Wells Fargo"),
  (20,"341829572829748","Emma Christian","2027-02-03","Wells Fargo");

-- --------------------------------
-- Insert into Order
-- --------------------------------

INSERT INTO `ecommerce`.`order`
(`idClient`,
`idTypeOfPayment`)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15);

-- --------------------------------
-- Insert into Order Status
-- --------------------------------

INSERT INTO `ecommerce`.`orderstatus`
(`idOrder`,
`Status`,
`TrackingCode`)
VALUES
  (1,"Cancelled","QHL52YVF3RB"),
  (2,"Refunded","FXO20RTI5VH"),
  (3,"Awaiting Shipment","VRO62DLR7PJ"),
  (4,"Disputed","QXU67ENL1EX"),
  (5,"Shipped","BNX75SIG6FE"),
  (6,"Awaiting Pickup","ZDQ86ARN8MH"),
  (7,"Awaiting Pickup","LEY25LRS6BG"),
  (8,"Shipped","VXM46OXI6LI"),
  (9,"Awaiting Shipment","ICF73TFO8DI"),
  (10,"Awaiting Shipment","FPD58LXY8DU"),
  (11,"Completed ","ZOY43OYF4HW"),
  (12,"Awaiting Shipment","GRU54FBK5HL"),
  (13,"Partially Shipped","PPN77JHO3MA"),
  (14,"Cancelled","BAP50SXJ6OR"),
  (15,"Awaiting Payment","EJZ22XTE8LW");

-- --------------------------------
-- Insert into Product Order
-- --------------------------------

INSERT INTO `ecommerce`.`productorder`
(`idProduct`,
`idOrder`)
VALUES
  (7,1),
  (6,1),
  (9,1),
  (3,1),
  (6,2),
  (5,2),
  (4,2),
  (9,2),
  (8,2),
  (6,3),
  (2,3),
  (3,3),
  (5,3),
  (1,3),
  (2,4),
  (5,4),
  (7,4),
  (10,4),
  (4,5),
  (2,5),
  (1,5),
  (7,5),
  (9,5),
  (3,6),
  (7,6),
  (9,6),
  (4,6),
  (8,6),
  (10,7),
  (8,7),
  (2,7),
  (9,7),
  (5,7),
  (6,8),
  (8,8),
  (3,8),
  (7,8),
  (2,8),
  (1,9),
  (4,9),
  (6,9),
  (2,9),
  (3,9),
  (1,10),
  (4,10),
  (6,10),
  (2,10),
  (2,11),
  (8,11),
  (1,11),
  (10,11),
  (5,12),
  (2,12),
  (10,12),
  (8,13),
  (2,13),
  (6,13),
  (8,14),
  (9,14),
  (2,14),
  (1,14),
  (10,15),
  (3,15),
  (9,15),
  (4,15),
  (8,15);

-- ---------------------------------------
-- Insert into making a product available
-- ---------------------------------------

INSERT INTO `ecommerce`.`making a product available`
(`idSupplier`,
`idProduct`)
VALUES
  (10,7),
  (3,10),
  (9,5),
  (4,7),
  (8,7),
  (1,10),
  (2,9),
  (2,8),
  (9,3),
  (6,5),
  (3,9),
  (2,6),
  (1,8),
  (9,1),
  (4,1),
  (5,6),
  (3,1),
  (2,7),
  (8,2),
  (8,6),
  (7,2),
  (8,8),
  (10,9);

-- ---------------------------------------
-- Insert into products per seller
-- ---------------------------------------

INSERT INTO `ecommerce`.`products per seller`
(`idSeller`,
`idProducts`,
`Quantity`)
VALUES
  (9,6,49),
  (8,4,29),
  (7,9,29),
  (8,1,10),
  (10,5,37),
  (2,3,37),
  (6,3,13),
  (3,6,20),
  (6,5,4),
  (9,2,10),
  (5,3,31),
  (3,8,22),
  (2,6,16),
  (1,8,42),
  (10,4,19),
  (5,4,35);
