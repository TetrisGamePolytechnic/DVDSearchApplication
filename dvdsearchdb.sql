create database IF NOT EXISTS dvdsearch;
use dvdsearch;
CREATE TABLE IF NOT EXISTS DVDs (
    DVDID INTEGER NOT NULL AUTO_INCREMENT,
    Name TEXT(24),
    PRIMARY KEY(DVDID));
LOAD DATA INFILE 'e:\\Deploy App\\ATProject\\DVDSearchDatabase\\TITLES.csv' INTO TABLE DVDs
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(Name);