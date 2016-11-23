-- Find owner who have more than 2 caravans and show monthly rent 
SELECT o.owner_name  ,COUNT(co.caravan_no) ,TRUNC(SUM(c.annual_rent/12),1) 
FROM owner o , caravan_owner co,caravan c
WHERE  o.owner_id=co.owner_id AND c.caravan_id=co.caravan_no
GROUP BY o.owner_name
HAVING COUNT(co.caravan_no)>=2;

-- Find owners who have their caravans at more than one site 
SELECT DISTINCT(o.owner_name),o.owner_address,o.notes
FROM caravan_owner co,owner o,caravan c
WHERE o.owner_id=co.owner_id AND c.caravan_id=co.caravan_no 
      AND  co.owner_id in (
		SELECT co.owner_id
		FROM caravan c,caravan_owner co,owner o
		WHERE c.caravan_id=co.caravan_no AND o.owner_id=co.owner_id
		GROUP BY co.owner_id
		HAVING COUNT(DISTINCT c.caravan_park_id)>=2 );

-- For every caravan park find caravan with max sleeps beds
SELECT c.caravan_park_id,c.caravan_id,c.RParty_size_max,c.rental_caravan, o.owner_name
FROM caravan c,owner o ,caravan_owner co
WHERE o.owner_id(+)=co.owner_id AND c.caravan_id=co.caravan_no 
     AND (c.RParty_size_max,c.caravan_park_id) IN
		(SELECT MAX(c.RParty_size_max),c.caravan_park_id
		FROM caravan c
		GROUP BY c.caravan_park_id);

