DROP TABLE IF EXISTS "products";
CREATE TABLE "products" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255) DEFAULT '' NOT NULL, "description" text, "created_at" datetime, "updated_at" datetime, "permalink" varchar(255), "available_on" datetime, "tax_category_id" integer, "shipping_category_id" integer, "deleted_at" datetime, "meta_description" varchar(255), "meta_keywords" varchar(255), "count_on_hand" integer DEFAULT 0 NOT NULL, "vendor_id" integer);
INSERT INTO "products" VALUES(1,'Dispensador de Agua Electrolux','DISPENSADOR AGUA FRIA/CALIENTE C/ALACENA
','2011-12-01 00:34:48.656250','2011-12-27 15:12:34.152048','dispensador-agua','2011-11-30 00:00:00.000000',1,NULL,NULL,'dispensador-agua-alcena-Electrolux','dispensador-agua',20,NULL);
INSERT INTO "products" VALUES(2,'Dispensador de Agua Electrolux','DISPENSADOR AGUA FRIA/CALIENTE C/ALACENA BLANCO
Electrolux','2011-12-01 01:41:05.828125','2011-12-01 21:29:30.234375','dispensador-de-agua-con-alacena','2011-11-30 00:00:00.000000',1,NULL,NULL,'Dispensador-Agua-Electrolux','Dispensador, Agua, Electrolux',10,NULL);
INSERT INTO "products" VALUES(3,'Dispensador de Agua con nevera - Electrolux','DISPENSADOR AGUA FRIA/CALIENTE C/NEVERA SILVER
Electrolux','2011-12-01 02:47:16.328125','2011-12-01 02:51:16.265625','dispensador-de-agua-con-nevera-electrolux','2011-11-30 00:00:00.000000',1,NULL,NULL,'dispensador-agua-nevera-electrolux','dispensador-agua-nevera-electrolux',10,NULL);
INSERT INTO "products" VALUES(4,'COPY OF DISPENSADOR AGUA Electrolux','DISPENSADOR AGUA FRIA/CALIENTE C/ALACENA SILVER
','2011-12-01 02:55:40.890625','2011-12-01 03:00:35.625000','dispensador-agua-1','2011-11-30 00:00:00.000000',1,NULL,'2011-12-01 03:00:35.593750','dispensador-agua-alcena-Electrolux','dispensador-agua',10,NULL);
INSERT INTO "products" VALUES(5,'COPY OF Dispensador de Agua con nevera - Electrolux','DISPENSADOR AGUA FRIA/CALIENTE C/NEVERA SILVER
Electrolux','2011-12-01 02:55:52.734375','2011-12-01 03:00:43.328125','dispensador-de-agua-con-nevera-electrolux-1','2011-11-30 00:00:00.000000',1,NULL,'2011-12-01 03:00:43.296875','dispensador-agua-nevera-electrolux','dispensador-agua-nevera-electrolux',10,NULL);
INSERT INTO "products" VALUES(6,'Dispensador de Agua con nevera - Electrolux','DISPENSADOR AGUA FRIA/CALIENTE C/NEVERA Blanco
Electrolux','2011-12-01 02:56:04.390625','2011-12-01 02:58:21.515625','dispensador-de-agua-con-nevera-electrolux-2','2011-11-30 00:00:00.000000',1,NULL,NULL,'dispensador-agua-nevera-electrolux','dispensador-agua-nevera-electrolux',10,NULL);
INSERT INTO "products" VALUES(7,'Horno Tostador B&D','HORNO TOSTADOR ACERO INOX. INFRAROJO DIGITAL   B&D: Hasta 50% mas rapido que un horno de convección
50+ recetas pre-programadas
Recalienta, cocina, asa
Menu programacion convierte recetas tradicionales en
tiempo Infrawave
Display digital en español
Panel de control en español
Facil de limpiar"','2011-12-01 03:08:35.031250','2011-12-02 14:37:56.640625','horno-tostador-bdfc151b','2011-11-30 00:00:00.000000',1,NULL,NULL,'Horno-Tostador-B&D','Horno-Tostador-B&D',10,NULL);
INSERT INTO "products" VALUES(8,'Horno Tostador B&D','HORNO TOSTADOR BLANCO  
B&D','2011-12-01 03:14:56.296875','2011-12-02 14:50:39.468750','horno-tostador-bdtro420','2011-11-30 00:00:00.000000',1,NULL,NULL,'Horno-Tostador-B&D','Horno-Tostador-B&D',10,NULL);
INSERT INTO "products" VALUES(9,'Horno Tostador B&D','HORNO TOSTADOR ACERO INOX.  
Black&Decker
','2011-12-01 03:26:27.906250','2011-12-02 14:52:34.000000','horno-tostador-bdtro965','2011-11-30 00:00:00.000000',1,NULL,NULL,'Horno-Tostador-B&D','Horno-Tostador-B&D',10,NULL);
INSERT INTO "products" VALUES(10,'Horno Tostador B&D','HORNO TOSTADOR BLANCO X.   B&D Comodidad Multifuncional Controles fáciles de manejar para tostar, hornear, asar y conservar el calor Máxima Conveniencia Cronómetro de 60 minutos con señal audible y apagado automático al finalizar el ciclo de cocción Fácil de Usar Puerta transparente de vidrio permite supervisar la cocción de los alimentos Fácil de Limpiar Bandeja removible para fácil y rápida limpieza de residuos','2011-12-01 03:38:44.078125','2011-12-02 15:01:19.062500','horno-tostador-bdtro4051','2011-11-30 00:00:00.000000',1,NULL,NULL,'Horno-Tostador-B&D','Horno-Tostador-B&D',10,NULL);
INSERT INTO "products" VALUES(11,'Horno Tostador B&D','HORNO TOSTADOR BLANCO 10 LTS.   
B&D','2011-12-01 03:50:45.296875','2011-12-02 15:03:38.031250','horno-tostador-bdtro500','2011-12-01 09:00:00.000000',1,NULL,NULL,'Horno-Tostador-B&D','Horno-Tostador-B&D',10,NULL);
INSERT INTO "products" VALUES(12,'Horno Tostador B&D','"HORNO TOSTADOR ACERO INOX. 20 LTS.   B&D: apacidad extra grande para hornear, asar, tostar y recalentar una variedad de alimentos.
Tuesta hasta tres bagels por mitad o seis rebanadas de panInterior curvo extra profundo acomoda una pizza de 12'', ideal para preparar una pizza crujiente al gusto.
Bandeja de residuos corrediza y removible fácil de limpiar.
1500 Watt..
Capacidad 21 litros.
Atractivo modelo de acero inoxidable cepillado, luce bien en cualquier cocina.
Cronómetro de 60 minutos con apagado automático y señal audible para mayor tranquilidad.
Lujoso modelo curvo por enfrente ofrece mayor visibilidadIncluye molde de hornear y una parrilla para asar."','2011-12-02 14:20:30.187500','2011-12-02 15:09:59.312500','horno-tostador-bdcto650','2011-12-01 04:30:00.000000',1,NULL,NULL,'Horno-Tostador-B&D','Horno-Tostador-B&D',10,NULL);
INSERT INTO "products" VALUES(13,'Horno Tostador B&D','"HORNO TOSTADOR ACERO INOX. 20 LTS. DIGITAL  B&D. Rendimiento superior: La cocción por convección distribuye el calor uniformemente. Versatilidad: Cronómetro de 120 minutos permite hornear, asar y tostar una variedad de alimentos Parrilla corrediza de 2 posiciones útil para asar. Diseño práctico: Observe la cocción perfecta de los alimentos a través de la amplia puerta transparente de vidrio"','2011-12-02 15:34:21.343750','2011-12-02 15:58:25.828125','horno-tostador-bdcto6302','2011-12-02 04:30:00.000000',1,NULL,NULL,'Horno-Tostador-B&D','Horno-Tostador-B&D',10,NULL);
INSERT INTO "products" VALUES(14,'Horno Tostador B&D',NULL,'2011-12-02 16:01:01.734375','2011-12-02 16:02:21.937500','horno-tostador-b-and-d','2011-12-02 04:30:00.000000',1,NULL,'2011-12-02 16:02:21.906250',NULL,NULL,0,NULL);
INSERT INTO "products" VALUES(15,'Ventilador Cuadrado Electrolux','"VENTILADOR TURBO 10"" TU01: velocidades. Rejilla giratoria con control de velocidad. Asa de transporte. Temporizador de 60 min. Fusible térmico de seguridad. Mejor distribución de la salida del aire"
','2011-12-02 16:30:16.687500','2011-12-02 20:20:42.515625','ventiladores-cuadrado-electrolux-tu01','2011-12-02 04:30:00.000000',1,NULL,NULL,'Ventiladores-Cuadrado-Electrolux','Ventiladores-Cuadrado-Electrolux',0,NULL);
INSERT INTO "products" VALUES(16,'Ventilador Cuadrado Electrolux',NULL,'2011-12-02 20:22:38.140625','2011-12-02 21:34:07.859375','ventilador-cuadrado-electrolux','2011-12-02 04:30:00.000000',1,NULL,'2011-12-02 21:34:07.375000',NULL,NULL,0,NULL);
INSERT INTO "products" VALUES(17,'Ventilador Cuadrado Electrolux','"VENTILADOR TURBO 18"" TU41: 3 velocidades. Rejilla giratoria con control de velocidad. Asa de transporte. Temporizador de 120 min. Fusible térmico de seguridad
Turbo: Mejor distribución de la salida del aire".','2011-12-02 20:23:13.781250','2011-12-02 21:20:49.781250','ventilador-cuadrado-electrolux-tu41','2011-12-02 04:30:00.000000',1,NULL,NULL,'Ventiladores-Cuadrado-Electrolux','Ventiladores-Cuadrado-Electrolux',0,NULL);
INSERT INTO "products" VALUES(18,'Ventilador Mesa Electrolux','"VENTILADOR MESA/PARED PLASTICO VM22: Ventilador de plástico. 3 velocidades. Oscilación. Asa de transporte. Temporizador de 120 min. Fusible térmico de seguridad. Inclinación vertical. Aspas transparentes"','2011-12-02 21:37:29.718750','2011-12-02 21:45:46.359375','ventilador-mesa-electrolux','2011-12-02 04:30:00.000000',1,NULL,NULL,'Ventilador- Mesa-Electrolux','Ventilador- Mesa-Electrolux',10,NULL);
INSERT INTO "products" VALUES(19,'Ventilador Mesa Electrolux','"VENTILADOR MESA/PARED PLASTICO VM37: Ventilador metálico. 3 velocidades. Oscilación. Asa de transporte. Fusible térmico de seguridad. Inclinación vertical. Terminación cromada. Aspas transparentes"
','2011-12-02 21:58:03.562500','2011-12-02 22:01:31.156250','ventilador-mesa-electrolux-vm37','2011-12-02 04:30:00.000000',1,NULL,NULL,'Ventilador Mesa Electrolux','Ventilador Mesa Electrolux',10,NULL);
INSERT INTO "products" VALUES(20,'Ventilador Pedestal Electrolux','"VENTILADOR PIE METALICO VP10: 3 velocidades. Oscilación. Fusible térmico de seguridad. Inclinación vertical. Terminación cromada. Rejilla de 120 radios. Aspas transparentes. Base redonda"','2011-12-02 22:07:01.609375','2011-12-02 22:10:03.203125','ventilador-pedestal-electrolux-vp10','2011-12-02 04:30:00.000000',1,NULL,NULL,'Ventilador Pedestal Electrolux','Ventilador Pedestal Electrolux',10,NULL);
INSERT INTO "products" VALUES(21,'Ventilador Torre Electrolux','"VENTILADOR TORRE 90W: Velocidades: 3 Temporadizador: N/A. Material: Plástico y metal. Panel de control Touch Screen. Control remoto. 3 ventiladores independientes. 7,5H Timer. 3 modalidades de ventilación (Normal, natural, dormir). Oscilación Horizontal de 90°. Diseño ultra delgado."','2011-12-02 22:27:56.140625','2011-12-02 22:31:52.359375','ventilador-torre-electrolux-vtl01','2011-12-02 04:30:00.000000',1,NULL,NULL,'ventilador-torre-electrolux-VTL01','ventilador-torre-electrolux-VTL01',10,NULL);
INSERT INTO "products" VALUES(22,'Ventiladores Torre Electrolux','"VENTILADOR DE TORRE 35 CM TFV10: 3 velocidades. 3 hélices. Oscilación el propulsor de limpieza fácil. Correa de transporte. Ajuste de inclinación. Extraíble barandillas. Base para fijar en la pared. Ultra silencioso: hasta 50 db. De seguridad contra el sobrecalentamiento"','2011-12-03 01:22:39.671875','2011-12-03 01:26:38.093750','ventiladores-torre-electrolux-tfv10','2011-12-02 04:30:00.000000',1,NULL,NULL,'ventiladores-torre-electrolux-TFV10','ventiladores-torre-electrolux-TFV10',10,NULL);
INSERT INTO "products" VALUES(23,'Ventiladores Escritorio Electrolux ','VENTILADOR D/ESCRITORIO 40 CM DFV20
Electrolux','2011-12-03 01:42:52.437500','2011-12-03 01:44:53.734375','ventiladores-escritorio-electrolux-dfv10','2011-12-02 04:30:00.000000',1,NULL,NULL,'ventiladores-escritorio-electrolux-DFV10','ventiladores-escritorio-electrolux-DFV10',10,NULL);
INSERT INTO "products" VALUES(24,'Ventilador Escritorio Electrolux ','VENTILADOR D/ESCRITORIO 40 CM DFV20
Electrolux','2011-12-03 02:03:12.468750','2011-12-03 02:04:57.140625','ventilador-escritorio-electrolux-dfv20','2011-12-02 04:30:00.000000',1,NULL,NULL,'ventilador-escritorio-electrolux-DFV20','ventilador-escritorio-electrolux-DFV20',10,NULL);
INSERT INTO "products" VALUES(25,'Ventilador Cuadrado Electrolux ','VENTILADORBOX CUADRADO 40 CM BFV10
Electrolux','2011-12-03 02:13:56.000000','2011-12-03 02:15:49.109375','ventilador-cuadrado-electrolux-bfv10','2011-12-02 04:30:00.000000',1,NULL,NULL,'ventilador-cuadrado-electrolux-BFV10','ventilador-cuadrado-electrolux-BFV10',10,NULL);
INSERT INTO "products" VALUES(26,'Ventilador Pedestal Electrolux ','VENTILADOR D/PEDESTAL  40 CM SFV10
Electrolux','2011-12-03 02:26:04.875000','2011-12-03 02:29:19.796875','ventiladores-pedestal-electrolux-sfv10','2011-12-02 04:30:00.000000',1,NULL,NULL,'ventiladores-pedestal-electrolux-SFV10','ventiladores-pedestal-electrolux-SFV10',10,NULL);
INSERT INTO "products" VALUES(27,'Microondas  Electrolux ','MICROONDAS 17 Lts. Blanco: Capacidad: 17 lits. Panel de control digital. Puertas de cristal resistentes al calor. Seis recetas preprogramadas. Función de descongelado por tiempo y peso. Opción para grabar tus recetas favoritas. Función Express Cook. Disponible en Blanco y Espejo. Electrolux ','2011-12-03 04:27:27.406250','2011-12-03 04:48:17.656250','microondas-electrolux-emda17s3mj','2011-12-03 04:30:00.000000',1,NULL,NULL,'microondas-electrolux-EMDA17S3MJ','microondas-electrolux-EMDA17S3MJ',20,NULL);
INSERT INTO "products" VALUES(28,'Microondas  Electrolux ','MICROONDAS 23 Lts.
','2011-12-03 04:56:08.531250','2011-12-03 05:06:49.281250','microondas-electrolux-emda23g3mj','2011-12-03 04:30:00.000000',1,NULL,NULL,'microondas-electrolux-EMDA23G3MJ','microondas-electrolux-EMDA23G3MJ',20,NULL);
INSERT INTO "products" VALUES(29,'Televisores LCD AOC ','"AOC Monitor LED TV 24"", widescreen Full HD LED-LCD TV with NTSC, PAL-M& N Tuners, Diseño Delgado, resolución: Widescreen 1920x1080"','2011-12-03 05:27:30.734375','2011-12-03 05:30:06.453125','televisores-lcd-aoc-le24h037','2011-12-03 04:30:00.000000',1,NULL,NULL,'televisores-lcd-aoc-LE24H037','televisores-lcd-aoc-LE24H037',10,NULL);
INSERT INTO "products" VALUES(30,'Televisores FULLHD AOC ','AOC LCD 27 Full HD/C27H030. CARACTERÍSTICAS DEL PRODUCTO LCD 27 Full HD LC27H030, Definición de Imagen: Full HD,  Resolución en Línea: 1920x1080. Potencia Parlantes: 10 W, Brillo: 300 cd/m2, Contraste: 50.000:1, Sintonizador TDT: No. 1 año de Garantía','2011-12-03 13:32:05.484375','2011-12-03 13:36:49.406250','televisores-fullhd-aoc-lc27h030','2011-12-03 04:30:00.000000',1,NULL,NULL,'televisores-fullhd-aoc-LC27H030','televisores-fullhd-aoc-LC27H030',20,NULL);
INSERT INTO "products" VALUES(31,'Monitor LED AOC ','Monitor LED 15.6" LED 
AOC','2011-12-03 21:42:10.187500','2011-12-03 21:44:04.890625','monitor-led-aoc-e1621sw','2011-12-03 04:30:00.000000',1,NULL,NULL,'monitor-led-aoc-e1621sw','monitor-led-aoc-e1621sw',20,NULL);
INSERT INTO "products" VALUES(32,'Microondas  Electrolux ',NULL,'2011-12-03 22:25:09.109375','2011-12-03 22:32:23.453125','microondas-electrolux','2011-12-03 04:30:00.000000',1,NULL,'2011-12-03 22:32:23.421875',NULL,NULL,0,NULL);
INSERT INTO "products" VALUES(33,'Microondas  Electrolux ','MICROONDAS 23 Lts. ESPEJO  NUEVO
Electrolux','2011-12-03 22:38:09.218750','2011-12-04 00:08:32.390625','microondas-electrolux-emda28g3mj','2011-12-03 04:30:00.000000',1,NULL,NULL,'microondas-electrolux-EMDA28G3MJ','microondas-electrolux-EMDA28G3MJ',20,NULL);
INSERT INTO "products" VALUES(34,'Microondas  Electrolux ','MICROONDAS 31 Lts. ESPEJO  NUEVO
Electrolux','2011-12-04 03:39:47.656250','2011-12-04 03:41:40.328125','microondas-electrolux-emmn311d2sm','2011-12-03 04:30:00.000000',1,NULL,NULL,'microondas-electrolux-EMMN311D2SM','microondas-electrolux-EMMN311D2SM',10,NULL);
INSERT INTO "products" VALUES(35,'Horno Tostador  Electrolux ','HORNO TOSTADOR 9 Lts. NEGRO
Electrolux','2011-12-04 04:05:57.250000','2011-12-04 04:11:43.375000','horno-tostador-electrolux-efa091m1pb','2011-12-03 04:30:00.000000',1,NULL,'2011-12-04 04:11:43.343750','horno-tostador-electrolux-EFA091M1PB','horno-tostador-electrolux-EFA091M1PB',10,NULL);
INSERT INTO "products" VALUES(36,'Horno Tostador  Electrolux ','HORNO TOSTADOR 14 Lts. 
Electrolux','2011-12-04 04:16:47.843750','2011-12-04 04:58:59.484375','horno-tostador-electrolux-efd141msp','2011-12-03 04:30:00.000000',1,NULL,'2011-12-04 04:50:45.890625','horno-tostador-electrolux-EFD141MSP','horno-tostador-electrolux-EFD141MSP',20,NULL);
INSERT INTO "products" VALUES(37,'Horno Tostador  Electrolux ','HORNO TOSTADOR 9 Lts. 
Electrolux','2011-12-04 04:38:39.328125','2011-12-04 05:05:49.234375','horno-tostador-electrolux-efa091m1p','2011-12-04 04:30:00.000000',1,NULL,'2011-12-04 05:05:48.890625','horno-tostador-electrolux-EFA091M1P','horno-tostador-electrolux-EFA091M1P',20,NULL);
INSERT INTO "products" VALUES(38,'Horno Tostador  Electrolux ','HORNO TOSTADOR 14 Lts. 
Electrolux','2011-12-04 04:51:59.765625','2011-12-04 04:53:58.359375','horno-tostador-electrolux-efd141msp','2011-12-04 04:30:00.000000',1,NULL,NULL,'horno-tostador-electrolux-EFD141MSP','horno-tostador-electrolux-EFD141MSP',10,NULL);
INSERT INTO "products" VALUES(39,'Microondas  Electrolux ','MICROONDAS 17 Lts. ESPEJO NUEVO
Electrolux','2011-12-07 15:43:12.875000','2011-12-07 15:45:39.125000','microondas-electrolux-emx171d1pm','2011-12-07 04:30:00.000000',1,NULL,NULL,'microondas-electrolux-EMX171D1PM','microondas-electrolux-EMX171D1PM',10,NULL);
