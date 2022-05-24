CREATE TABLE Entry
(
  ID_Entry          INT NOT NULL IDENTITY(100,1),
  ID_Event          INT NOT NULL,
  ID_Location       INT NOT NULL,
  Event_Timestamp   TIME,
  CONSTRAINT ID_Entry_PK PRIMARY KEY CLUSTERED (ID_Entry),
  CONSTRAINT ID_Event_FK FOREIGN KEY (ID_Event) REFERENCES Events (ID_Event),
  CONSTRAINT ID_Location_FK FOREIGN KEY (ID_Location) REFERENCES Locations (ID_Location)
)
CREATE TABLE Events
(
  ID_Event          INT NOT NULL IDENTITY(10,1),
  ID_Event_Type     INT NOT NULL,
  EventMessage      VARCHAR(200),
  CONSTRAINT ID_Event_PK PRIMARY KEY CLUSTERED (ID_Event),
  CONSTRAINT ID_Event_Type_FK FOREIGN KEY (ID_Event_Type) REFERENCES EventType (ID_Event_Type)
)
CREATE TABLE Locations
(
    ID_Location         INT NOT NULL IDENTITY(10,1),
    ID_Location_Type    INT NOT NULL,
    LocationName        VARCHAR(50),
    DMS_Long            FLOAT(8),
    DMS_Lat             FLOAT(8),
	CONSTRAINT ID_Location_PK PRIMARY KEY CLUSTERED (ID_Location),
	CONSTRAINT ID_Location_Type_FK FOREIGN KEY (ID_Location_Type) REFERENCES LocationType (ID_Location_Type)
)
CREATE TABLE EventType
(
    ID_Event_Type   INT NOT NULL IDENTITY(1,1),
    EventName       VARCHAR(20),
    Description     VARCHAR(200),
	CONSTRAINT ID_Event_Type_PK PRIMARY KEY CLUSTERED (ID_Event_Type)
)
CREATE TABLE LocationType
(
  ID_Location_Type INT NOT NULL IDENTITY(1,1),
  LocationTypeName      VARCHAR(20)
  CONSTRAINT ID_Location_Type_PK PRIMARY KEY CLUSTERED (ID_Location_Type)
)
