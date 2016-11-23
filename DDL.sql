DROP TABLE caravan_pitch CASCADE CONSTRAINTS ;
DROP TABLE caravan CASCADE CONSTRAINTS ; 
DROP TABLE owner CASCADE CONSTRAINTS ; 
DROP TABLE caravan_owner CASCADE CONSTRAINTS ; 


--Caravan_Pitch (CPPitch_id, CP_number, pitch_description, size, Caravan Park_id)
CREATE TABLE caravan_pitch (
cppitch_id NUMBER(4),
cp_number NUMBER(4) UNIQUE NOT NULL,
pitch_description VARCHAR2(500),
pitch_length NUMBER(2),
pitch_width NUMBER(2),
caravan_park_id NUMBER(4),
CONSTRAINT check_pich_length CHECK (pitch_length<=15),
CONSTRAINT check_pich_width CHECK (pitch_width<=15),
CONSTRAINT pk_caravan_pitch PRIMARY KEY (cppitch_id));

--Caravan (Caravan_no, Rental_Caravan, Annual Rent (owner to pay), Description, RBedroom No, R Party Size Max (Sleeps), Caravan_Cat_id, Caravan Park_id, CaravanPitch_id)
CREATE TABLE caravan (
caravan_id NUMBER(4), 
rental_caravan VARCHAR2(5) NOT NULL, -- Happy's Holiday FOR RENTAL ,Owner's NOT- just yes or now  
annual_rent NUMBER(6),
caravan_description VARCHAR(500),
RBedroom_no NUMBER(4),
RParty_size_max NUMBER(2) NOT NULL,
caravan_cat_id NUMBER(4),
caravan_park_id NUMBER(4),
caravan_pitch_id NUMBER(4),
CONSTRAINT fk_pitch FOREIGN KEY (caravan_pitch_id) REFERENCES caravan_pitch(cppitch_id) ON DELETE CASCADE,
CONSTRAINT pk_caravan PRIMARY KEY (caravan_id));

--Owner (Owner_id, owner_name, owner address, notes)
CREATE TABLE owner (
owner_id NUMBER(4),
owner_name VARCHAR2(50) NOT NULL,
owner_address VARCHAR2(50),
lat NUMBER,
lng NUMBER,
notes VARCHAR2(100),
CONSTRAINT pk_owner PRIMARY KEY (owner_id));

--Caravan_Owner (Caravan_no, Owner_id)
CREATE TABLE caravan_owner (
caravan_no NUMBER(4),
owner_id NUMBER(4),
CONSTRAINT pk_caravan_owner PRIMARY KEY (caravan_no),
CONSTRAINT fk_caravan FOREIGN KEY (caravan_no)  REFERENCES caravan (caravan_id) ON DELETE CASCADE,
CONSTRAINT fk_owner FOREIGN KEY (owner_id) REFERENCES owner (owner_id) ON DELETE SET NULL );

CREATE OR REPLACE VIEW car_desc
  AS
  SELECT cppitch_id,cp_number,caravan_no,rental_caravan,rbedroom_no,rparty_size_max,owner_name
FROM caravan_pitch,caravan,owner,caravan_owner
WHERE caravan_pitch.cppitch_id=caravan.caravan_pitch_id 
     AND caravan.caravan_id=caravan_owner.caravan_no 
     AND owner.owner_id=caravan_owner.owner_id;
--update car_desc set rental_caravan='yes' where caravan_no=3;

-- This commands is to create and drop sequences for PK columns 

DROP sequence pitch_app_seq1;
CREATE sequence pitch_app_seq1 start with 9;
DROP sequence caravan_app_seq1;
CREATE sequence caravan_app_seq1 start with 9;
DROP sequence owner_app_seq1;
CREATE sequence owner_app_seq1 start with 6;
DROP sequence caravan_owner_app_seq1;
CREATE sequence caravan_owner_app_seq1 start with 9;

commit;