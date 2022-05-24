--begin tran

/*....Insert....*/
--INSERT INTO Events(EventName, EventMessage, EventDescription)
--VALUES
--(1,'Siren','Possible/Likely/Certain/Iminent aerial threat'),
--(2,'Shelling','Artilery Bombardment/Rocket/Cruise Missile/Explosive Payload executed succesfully.'),
--(3,'Siege','Infiltration by military batteries inside an area/city/country.'),
--(4,'Evacuation','Operation that specifies relocation of civillians from occupied/sieged/neutral location.'),
--(5,'Intercept','AerialProjectiles/Military Planes striked by land-to-air defence systems.'),
--(6,'Liberation','Securization/clearing of an area/city/region/country through military operations/aid.'),
--(7,'Report','Reports of damaged structures/areas or civilian/military casualties')
--(8,'Other','Event that hasn''t been categorised.')


/*....Delete....*/
--DELETE FROM LocationType WHERE ID_Location_Type IN (1,2,3)

/*....Alter....*/
ALTER TABLE Locations
--ADD EventDescription      VARCHAR(200)
--DROP COLUMN DMS_Long
--DROP COLUMN LocationTypeName

/*....Tools....*/
--SET IDENTITY_INSERT EventType OFF	/*Bruteforce Insert*/
--EXEC sp_rename 'Entry.Event_Timestamp', 'TimeStamp', 'COLUMN'	/*Rename Column*/

--rollback
--commit

/*....Select....*/
SELECT * FROM Locations