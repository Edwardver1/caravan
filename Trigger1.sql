--Prevent adding value of rental_caravan except "yes" or "no"
CREATE OR REPLACE TRIGGER for_rent
BEFORE INSERT OR UPDATE OF rental_caravan ON caravan
FOR EACH ROW
BEGIN
  IF ((UPPER(:new.rental_caravan)  NOT LIKE UPPER('yes')) AND (UPPER(:new.rental_caravan) NOT LIKE UPPER('no'))) 
   THEN raise_application_error(-20960,'The value of Rental_caravan can be either "yes" or "no" ');
  ELSE 
   :new.rental_caravan := UPPER(:new.rental_caravan);
  END IF;
END;

--CHECKING TRIGGER for_rent

--update caravan set rental_caravan='dsf' where caravan_id=8;
--update caravan set rental_caravan='yes' where caravan_id=8;

--select * from caravan where caravan_id=8;