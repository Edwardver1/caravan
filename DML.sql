
--INSERTING DATA

INSERT INTO caravan_pitch VALUES (1,3,'Grass pitch, have shared electric hook-up and space for an awning.',10,10,1);
INSERT INTO caravan_pitch VALUES (2,4,'Hardstanding pitch, have shared electric hook-up and space for an awning.',7,10,1);
INSERT INTO caravan_pitch VALUES (3,5,'Grass pitch with shared electric hook-up.',8,10,2);
INSERT INTO caravan_pitch VALUES (4,7,'Grass pitch mostly provide all-weather surface and generally an individual ground level inlet to accept grey water. Further shared facilities include illuminated electrical hook-up bollard and drinking water.',12,12,3);
INSERT INTO caravan_pitch VALUES (5,10,'This pitch offer individual facilities, including all-weather pitching surface, illuminated electrical hook-up bollard (including booster TV aerial outlet), facilities for drinking water, grey water and chemical disposal, ground level inlet to accept foul water (grey water or sewage) and privacy hedge.',10,10,2);
INSERT INTO caravan_pitch VALUES (6,11,'This pitch offer all-weather pitching surface, illuminated electrical hook-up bollard (including booster TV aerial outlet), access to Wi-fi, grey water and chemical disposal.',7,7,1);
INSERT INTO caravan_pitch VALUES (7,9,'Hardstanding pitch, have shared electric hook-up bollard (including booster TV aerial outlet) and space for an awning.',10,10,3);
INSERT INTO caravan_pitch VALUES (8,13,'Hardstanding pitch provide all-weather surface and generally an individual ground level inlet to accept grey water. Further shared facilities include illuminated electrical hook-up bollard and drinking water.',10,10,3);

INSERT INTO CARAVAN VALUES (1,'NO',3700,'Gas BBQ Point, External 240v, Heki Rooflight, Motor Mover, Multi-Directional TV Aerial, Water Heater, Heater, Hitch Stabiliser, Shower, Oven, Door Flyscreen, Stereo System, Mixer Taps, Extractor Fan, Mains Electric, Integrated Appliances, Hob, Gas Water Heater, Fridge, Flyscreens, Free Standing Table, Grill, Exterior Gas Bottle Locker, Double Glazing, Cassette toilet, Bunk Beds, Blown Air System, Blinds, Battery Charger, Awning Light, 12v Power',2,4,1,3,8);
INSERT INTO CARAVAN VALUES (2,'NO',4100,'FABULOUS FAMILY HOLIDAY HOME - 3 bedroomed, with the benefit of bunk beds in one of the twin bedrooms.',3,6,3,1,2);
INSERT INTO CARAVAN VALUES (3,'NO',null,'End Bedroom, Fixed Bed, Fridge, Heater, Oven, Mains electric, Water heater, Cassette toilet, Shower, Battery Charger, Blinds, Fly screens, Door flyscreen, Blownair heating, Heki rooflight',2,4,2,2,3);
INSERT INTO CARAVAN VALUES (4,'YES',3460,'This caravan spec includes :- End Washroom, Fixed Bed, Microwave, Fridge, Oven, Mains electric, Water heater, Cassette toilet, Shower, Battery Charger, Blinds, Fly screens, Door flyscreen, Loose fitcarpets, Blownair heating, Anti theft tracker, TV Directional Aerial, Stereo system, Sun roof, Heki rooflight, Spare wheel, Alloy wheels, One piece Aluminum side panel, Hitch head stabiliser',3,5,1,3,4);
INSERT INTO CARAVAN VALUES (5,'YES',4670,'This caravan spec includes :- End Washroom, Fixed Bed, Microwave, Fridge, Heater, Oven, Mains electric, Water heater, Cassette toilet, Shower, Battery Charger, Blinds, Fly screens, Door flyscreen, Looe fit carpets, Wet central heating system, Alarm, TV Directional Aerial, Stereo system, Heki rooflight, External gas BBQ point, External 240v, Spare wheel, Alloy wheels, Hitch head stabiliser',1,2,2,2,5);
INSERT INTO CARAVAN VALUES (6,'NO',3900,'Bailey olympus 525, 2010 model, alu-tech body shell, 5 berth, single axle, tv aerial, microwave, lined curtains, laminate floor and wall construction, internal fold window blinds, heki rooflight, external storage locker, end lounge, toilet and separate shower cubicle, end dinette/bunk beds, gas water heater, cd player, fridge, cooker, microwave, led lighting',2,4,2,1,6);
INSERT INTO CARAVAN VALUES (7,'YES',3580,'Fixed bunk beds in rear (2) with table and seating area that makes into an additional single/double bed. Front dining area that makes into a double bed. Fridge (gas and electric operated). 3 burner cooker and sink unit. Deorema full awning. Warm air gas heating (truma). Hot water heater. Flushing toilet.',2,4,2,3,7);
INSERT INTO CARAVAN VALUES (8,'NO',3580,'Gas BBQ Point, External 240v, Heki Rooflight, Motor Mover, Multi-Directional TV Aerial, Water Heater, Heater',2,4,2,4,7);

INSERT INTO owner VALUES (1,'Leon','Rue Gaucheret 88, 1030 Schaerbeek, Belgium',50.863936,4.360414,null);
INSERT INTO owner VALUES (2,'Happy Holiday Ltd ','Rue de la Colline 15, 1000 Bruxelles, Belgium',50.846652,4.353547,null);
INSERT INTO owner VALUES (3,'Edward','Sint-Jacobsplein 25, 3000 Leuven, Belgium',50.880131,4.690454,null);
INSERT INTO owner VALUES (4,'Tony','Maria Pijpelincxstraat, 2000 Antwerpen, Belgium',51.215379,4.409165,null);
INSERT INTO owner VALUES (5,'Sanna','Rue du Châtelain 69, 1050 Ixelles, Belgium',50.825159,4.361122,null);

INSERT INTO caravan_owner VALUES (1,1);
INSERT INTO caravan_owner VALUES (2,3);
INSERT INTO caravan_owner VALUES (3,5);
INSERT INTO caravan_owner VALUES (4,2);
INSERT INTO caravan_owner VALUES (5,2);
INSERT INTO caravan_owner VALUES (6,1);
INSERT INTO caravan_owner VALUES (7,2);
INSERT INTO caravan_owner VALUES (8,4);


commit;