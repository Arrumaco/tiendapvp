DROP TABLE IF EXISTS "assets";
CREATE TABLE "assets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "viewable_id" integer, "viewable_type" varchar(50), "attachment_content_type" varchar(255), "attachment_file_name" varchar(255), "attachment_size" integer, "position" integer, "type" varchar(75), "attachment_updated_at" datetime, "attachment_width" integer, "attachment_height" integer, "alt" text);
INSERT INTO "assets" VALUES(1,3,'Product','image/jpeg','EQL153MBHS.jpg',NULL,1,'Image','2011-12-02 13:42:32.609375',960,720,'Dispensador de Agua
Electrolux
');
INSERT INTO "assets" VALUES(2,6,'Product','image/jpeg','EQL153MBHS.jpg',NULL,1,'Image','2011-12-02 13:51:54.234375',960,720,'Dispensador de Agua
Con nevera
Electrolux');
INSERT INTO "assets" VALUES(3,8,'Product','image/jpeg','BDTRO420.jpg',NULL,1,'Image','2011-12-02 14:07:45.750000',960,720,'Horno Tostador
Black&Decker
BDTRO420');
INSERT INTO "assets" VALUES(4,10,'Product','image/jpeg','BDTRO4051.jpg',NULL,1,'Image','2011-12-02 14:12:07.625000',960,720,'Horno Tostador
Black&Decker
BDTRO4051');
INSERT INTO "assets" VALUES(6,12,'Product','image/jpeg','BDCTO650.jpg',NULL,1,'Image','2011-12-02 14:29:24.968750',960,720,'Horno Tostador
Black&Decker
BDCTO650');
INSERT INTO "assets" VALUES(7,7,'Product','image/jpeg','BDCTO6302-B.jpg',NULL,1,'Image',NULL,960,720,'Horno Tostador Digital
Black&Decker
BDFC151B');
INSERT INTO "assets" VALUES(8,9,'Product','image/jpeg','BDTRO420.jpg',NULL,1,'Image',NULL,960,720,'HORNO TOSTADOR 
ACERO INOX.   
B&D
BDTRO965');
INSERT INTO "assets" VALUES(9,11,'Product','image/jpeg','BDCTO6302-B.jpg',NULL,1,'Image',NULL,960,720,'Horno Tostador
Black&Decker
BDTRO500');
INSERT INTO "assets" VALUES(10,13,'Product','image/jpeg','BDCTO6302-A.jpg',NULL,1,'Image','2011-12-02 15:50:39.546875',960,720,'Horno Tostador
Black&Decker
BDCTO6302');
INSERT INTO "assets" VALUES(11,13,'Product','image/jpeg','BDCTO6302-B.jpg',NULL,2,'Image','2011-12-02 15:51:28.234375',960,720,'Horno Tostador
Black&Decker
BDCTO6302');
INSERT INTO "assets" VALUES(12,15,'Product','image/jpeg','TU 01.jpg',NULL,1,'Image','2011-12-02 17:17:52.578125',960,720,'Ventilador Cuadrado
Electrolux
TU 01');
INSERT INTO "assets" VALUES(13,17,'Product','image/jpeg','TU41.jpg',NULL,1,'Image','2011-12-02 21:19:23.828125',960,720,'Ventiladores Cuadrado
Electrolux
TU41');
INSERT INTO "assets" VALUES(14,18,'Product','image/jpeg','VM22.jpg',NULL,1,'Image','2011-12-02 21:48:12.468750',960,720,'Ventilador de Mesa
Electrolux
VM22');
INSERT INTO "assets" VALUES(15,20,'Product','image/jpeg','VP10.jpg',NULL,1,'Image','2011-12-02 22:24:55.562500',960,720,'Ventiladores Pedestal
Electrolux
VP10');
INSERT INTO "assets" VALUES(16,21,'Product','image/jpeg','VTL01.jpg',NULL,1,'Image','2011-12-02 22:33:23.015625',960,720,'Ventiladores Torre
Electrolux
VTL01');
INSERT INTO "assets" VALUES(17,19,'Product','image/jpeg','VM37.jpg',NULL,1,'Image','2011-12-03 01:18:44.671875',960,720,'Ventiladores Mesa
Electrolux
VM37');
INSERT INTO "assets" VALUES(18,22,'Product','image/jpeg','TFV10.jpg',NULL,1,'Image','2011-12-03 01:39:10.953125',960,720,'Ventilador de Torre
Electrolux
TFV10');
INSERT INTO "assets" VALUES(19,23,'Product','image/jpeg','DFV20.jpg',NULL,1,'Image',NULL,960,720,'Ventilador de Escritorio
Electrolux
DFV10');
INSERT INTO "assets" VALUES(20,24,'Product','image/jpeg','DFV20.jpg',NULL,1,'Image','2011-12-03 02:08:58.078125',960,720,'Ventilador de Escritorio
Electrolux
DFV20');
INSERT INTO "assets" VALUES(21,25,'Product','image/jpeg','TU 01.jpg',NULL,1,'Image',NULL,960,720,'Ventilador Cuadrado
Electrolux
BFV10
');
INSERT INTO "assets" VALUES(22,26,'Product','image/jpeg','VTL01.jpg',NULL,1,'Image',NULL,960,720,'Ventilador de Pedestal
Electrolux
SFV10');
INSERT INTO "assets" VALUES(23,27,'Product','image/jpeg','EMDA17S3MJW.jpg',NULL,1,'Image','2011-12-03 04:34:47.359375',960,720,'Microondas
Electrolux
EMDA17S3MJ
');
INSERT INTO "assets" VALUES(24,28,'Product','image/jpeg','EMDA23G3MJW.jpg',NULL,1,'Image','2011-12-03 05:01:15.296875',960,720,'Microondas
Electrolux
EMDA23G3MJ
');
INSERT INTO "assets" VALUES(25,29,'Product','image/jpeg','LE24H037A.jpg',NULL,1,'Image','2011-12-03 05:36:36.843750',960,720,'Televisores LCD
AOC
LE24H037
');
INSERT INTO "assets" VALUES(26,29,'Product','image/jpeg','LE24H037B.jpg',NULL,2,'Image','2011-12-03 05:37:37.343750',960,720,'Televisores LCD
AOC
LE24H037
');
INSERT INTO "assets" VALUES(27,29,'Product','image/jpeg','LE24H037C.jpg',NULL,3,'Image','2011-12-03 05:38:24.140625',960,720,'Televisores LCD
AOC
LE24H037');
INSERT INTO "assets" VALUES(28,30,'Product','image/jpeg','LE24H037A.jpg',NULL,1,'Image',NULL,960,720,'Televisor FULLHD
AOC
LC27H030');
INSERT INTO "assets" VALUES(29,31,'Product','image/jpeg','E1621SW-A.jpg',NULL,1,'Image','2011-12-03 21:50:24.531250',960,720,'Monitor AOC: LED 15.6" LED ');
INSERT INTO "assets" VALUES(30,31,'Product','image/jpeg','E1621SW-B.jpg',NULL,2,'Image','2011-12-03 21:52:09.453125',960,720,'Monitor AOC: LED 15.6" LED');
INSERT INTO "assets" VALUES(31,31,'Product','image/jpeg','E1621SW-C.jpg',NULL,3,'Image','2011-12-03 21:53:48.671875',960,720,'Monitor AOC: LED 15.6" LED');
INSERT INTO "assets" VALUES(32,33,'Product','image/jpeg','EMDA23G3MJW.jpg',NULL,1,'Image',NULL,960,720,'MICROONDAS 28 Lts. NUEVO
Electrolux');
INSERT INTO "assets" VALUES(33,34,'Product','image/jpeg','EMMN311D2SM.jpg',NULL,1,'Image','2011-12-04 03:43:17.000000',960,720,'MICROONDAS 31 Lts. ESPEJO  NUEVO
Electrolux');
INSERT INTO "assets" VALUES(35,39,'Product','image/jpeg','EMMN311D2SM.jpg',NULL,1,'Image',NULL,960,720,'Electrolux');
INSERT INTO "assets" VALUES(36,1,'Product','image/jpeg','EQL153MBHS.jpg',NULL,1,'Image',NULL,960,720,'Dispensador de Agua Electrolux');
INSERT INTO "assets" VALUES(37,2,'Product','image/jpeg','EQL153MBHS.jpg',NULL,1,'Image',NULL,960,720,'Dispensador de Agua
Electrolux');
INSERT INTO "assets" VALUES(38,38,'Product','image/jpeg','EMDA17S3MJW.jpg',NULL,1,'Image',NULL,960,720,'HORNO TOSTADOR 14 Lts. ');
