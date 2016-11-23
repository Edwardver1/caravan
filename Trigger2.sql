--Check caravan for corrects berths number

CREATE OR REPLACE TRIGGER caravan_check
 BEFORE INSERT OR UPDATE  ON caravan
FOR EACH ROW
BEGIN 
 IF ((:new.RBedroom_no = 1 OR :old.RBedroom_no = 1) AND :new.RParty_size_max > 2)
 THEN raise_application_error(-20900,'Caravan with 1 bedroom can have max 2 berths ');
 END IF;
 IF ((:new.RBedroom_no = 2 OR :old.RBedroom_no = 2)  AND :new.RParty_size_max > 4)
 THEN raise_application_error(-20950,'Caravan with 2 bedrooms can have max 4 berths ');
 END IF;
 IF ((:new.RBedroom_no >= 3 OR :old.RBedroom_no >= 3) AND :new.RParty_size_max > 8)
 THEN raise_application_error(-20970,'Caravan with more than 2 bedrooms can have max 8 berths ');
 END IF;
END;

--CHECKING TRIGGER caravan_check

--CHECK caravan with 1 bedroom for beths
--update caravan set RParty_size_max=1 where caravan_id=5;
--CHECK caravan with 1 bedroom for beths
--update caravan set RParty_size_max=3 where caravan_id=5;

--select * from caravan where caravan_id=5;