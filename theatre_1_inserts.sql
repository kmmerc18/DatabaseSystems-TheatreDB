-- Final: Theatre Database
-- CS345 Databases Harcourt 
-- Kim, Tom, and Corinna
-- Purpose: Document all insert statements used to fill our database.

-- TIMESLOT
insert into timeslot values('09:00:00', 'Monday');
insert into timeslot values('09:00:00', 'Tuesday');
insert into timeslot values('09:00:00', 'Wednesday');
insert into timeslot values('09:00:00', 'Thursday');
insert into timeslot values('09:00:00', 'Friday');
insert into timeslot values('12:30:00', 'Monday');
insert into timeslot values('12:30:00', 'Tuesday');
insert into timeslot values('12:30:00', 'Wednesday');
insert into timeslot values('12:30:00', 'Thursday');
insert into timeslot values('12:30:00', 'Friday');
insert into timeslot values('12:30:00', 'Saturday');
insert into timeslot values('13:00:00', 'Sunday');
insert into timeslot values('17:00:00', 'Sunday');
insert into timeslot values('17:00:00', 'Saturday');
insert into timeslot values('19:00:00', 'Monday');
insert into timeslot values('19:00:00', 'Tuesday');
insert into timeslot values('19:00:00', 'Wednesday');
insert into timeslot values('19:00:00', 'Thursday');
insert into timeslot values('19:00:00', 'Friday');
	
-- example delete statement
insert into timeslot values('02:00:00', 'Monday');
delete from timeslot where day = 'Monday' and "time" = '02:00:00';


-- PEOPLE
insert into people values('Corinna', '1992-07-12', 'Orchestra', 'Musician', '1802424912', 'corinna@theatreco.com');
insert into people values('Tom', '1976-07-12', 'Orchestra', 'Musician', '1234893934', 'tom@theatreco.com');
insert into people values('Kim', '1984-07-12', 'Orchestra', 'Musician', '1034939423', 'kim@theatreco.com');
insert into people values('Arman', '1966-07-12', 'Cast', 'Actor', '1234939252', 'arman@theatreco.com');
insert into people values('James', '1953-07-12', 'Cast', 'Actor', '1029394934', 'james@theatreco.com');
insert into people values('Will', '1971-07-12', 'Cast', 'Actor', '1903948653', 'will@theatreco.com');
insert into people values('Darren', '2001-07-12', 'Orchestra', 'Musician', '1342093942', 'darren@theatreco.com');
insert into people values('Nick', '2003-07-12', 'Orchestra', 'Musician', '1092394253', 'nick@theatreco.com');
insert into people values('Danial', '2001-07-12', 'Cast', 'Actor', '1983853452', 'danial@theatreco.com');
insert into people values('Daniel', '1989-07-12', 'Technical', 'Sound', '1928348735', 'daniel@theatreco.com');
insert into people values('Jiusheng', '1992-07-12', 'Technical', 'Lighting', '1802937583', 'jiusheng@theatreco.com');
insert into people values('Charlie', '1987-07-12', 'Costume', 'Designer', '1098345534', 'charlie@theatreco.com');
insert into people values('Ed', '1973-07-12', 'Orchestra', 'Conductor', '1670493945', 'ed@theatreco.com');
insert into people values('Allison', '1992-07-12', 'Orchestra', 'Musician', '1848395934', 'allison@theatreco.com');
insert into people values('Nick', '1954-01-03', 'Cast', 'Musician', '1283482394', 'nick.2@theatreco.com');
insert into people values('Sai', '1958-11-26', 'Orchestra', 'Musician', '1939485234', 'sai@theatreco.com');
insert into people values('James', '1977-12-11', 'Orchestra', 'Musician', '1029394995', 'james.2@theatreco.com');
insert into people values('Kira', '1957-12-14', 'Orchestra', 'Musician', '1039449395', 'kira@theatreco.com');
insert into people values('Remi', '1988-10-10', 'Orchestra', 'Musician', '1039253954', 'remi@theatreco.com');
insert into people values('Victoria', '1999-05-01', 'Orchestra', 'Musician', '1043858434', 'victoria@theatreco.com');
insert into people values('Haille', '1948-02-17', 'Orchestra', 'Musician', '1948593932', 'haille@theatreco.com');
insert into people values('Kath', '2007-09-21', 'Administrator', 'Stage Manager', '6033333333', 'kath@theatreco.com');
insert into people values('Henderson', '2007-09-21', 'Administrator', 'Director', '6033333339', 'henderson@theatreco.com');
insert into people values('Kevin', '2003-09-21', 'Cast', 'Dance Captain', '6033333839', 'kevin@theatreco.com');
insert into people values('Jackie', '2003-09-21', 'Cast', 'Dance Captain', '6034333839', 'jackie@theatreco.com');
insert into people values('Cole', '2003-09-21', 'Administrator', 'Producer', '6033733839', 'cole@theatreco.com');
insert into people values('Sarah', '2003-09-21', 'Hair and Makeup', 'Hair Stylist', '6034373739', 'sarah@theatreco.com');
insert into people values('Sally', '2003-09-21', 'Hair and Makeup', 'Hair Stylist', '6034378839', 'sally@theatreco.com');
insert into people values('Algernon', '1924-09-21', 'Hair and Makeup', 'Makeup Artist', '6034388839', 'algernon@theatreco.com');
	
-- example delete statement (and reinsert)
insert into people values('Sammy', '2003-09-22', 'Hair and Makeup', 'Hair Stylist', '6134378839', 'sammy@theatreco.com');
delete from people where name = 'Sammy' and birthdate = '2003-09-22';	


-- INSTRUMENTS
insert into instruments values('Bb Trumpet');
insert into instruments values('Bass');
insert into instruments values('Cello');
insert into instruments values('Horn');
insert into instruments values('Synthesizer');
insert into instruments values('Anvil');
insert into instruments values('Bell Tree');
insert into instruments values('Bells');
insert into instruments values('Chimes');
insert into instruments values('Cowbell');
insert into instruments values('Crotales');
insert into instruments values('Finger Cymbal');
insert into instruments values('Rachet');
insert into instruments values('Temple Blocks');
insert into instruments values('Triangle');
insert into instruments values('Wood Block');
insert into instruments values('Piano');
insert into instruments values('Piccolo');
insert into instruments values('Flute');
insert into instruments values('Bassoon');
insert into instruments values('C Trumpet');
insert into instruments values('Viola');
insert into instruments values('Violin');
insert into instruments values('Keyboard');
insert into instruments values('Drums');
insert into instruments values('Latin-Tim Bale');
insert into instruments values('Mallets');
insert into instruments values('Glockenspiel');
insert into instruments values('Tubular Bells');
insert into instruments values('Steel Acoustic');
insert into instruments values('Nylon Acoustic');
insert into instruments values('Tenor Banjo');
insert into instruments values('Upright Bass');
insert into instruments values('Oboe');
insert into instruments values('English Horn');
insert into instruments values('Bb Clarinet');
insert into instruments values('Bass Clarinet');
insert into instruments values('Eb Clarinet');
insert into instruments values('French Horn');
insert into instruments values('Trombone');
insert into instruments values('Harp');
insert into instruments values('Euphonium');
insert into instruments values('Melodica');
insert into instruments values('Ukulele');
insert into instruments values('Timpani');
insert into instruments values('Suspended Cymbals');
insert into instruments values('Crash Cymbals');
insert into instruments values('Snare Drum');
insert into instruments values('Tambourine');
insert into instruments values('Bass Drum');
insert into instruments values('Xylophone');
insert into instruments values('Vibes');
insert into instruments values('Marimba');
insert into instruments values('Woodblock');
insert into instruments values('Slapstick');
insert into instruments values('Steel Drum');
insert into instruments values('Gong');
insert into instruments values('Guiro');
	
-- example delete statement
insert into instruments values ('Kazoo');	
delete from instruments where instrument = 'Kazoo';


-- PLAYS
insert into plays values('Darren', '2001-07-12', 'Steel Acoustic');
insert into plays values('Darren', '2001-07-12', 'Nylon Acoustic');
insert into plays values('Darren', '2001-07-12', 'Keyboard');
insert into plays values('Darren', '2001-07-12', 'Violin');
insert into plays values('Nick', '2003-07-12', 'Drums');
insert into plays values('Nick', '2003-07-12', 'Latin-Tim Bale');
insert into plays values('Nick', '2003-07-12', 'Synthesizer');
insert into plays values('Nick', '2003-07-12', 'Violin');
insert into plays values('Corinna', '1992-07-12', 'Mallets');
insert into plays values('Corinna', '1992-07-12', 'Glockenspiel');
insert into plays values('Corinna', '1992-07-12', 'Upright Bass');
insert into plays values('Corinna', '1992-07-12', 'Synthesizer');
insert into plays values('Kim', '1984-07-12', 'Violin');
insert into plays values('Kim', '1984-07-12', 'Viola');
insert into plays values('Kim', '1984-07-12', 'Cello');
insert into plays values('Kim', '1984-07-12', 'Synthesizer');
insert into plays values('Tom', '1976-07-12', 'Bb Trumpet');
insert into plays values('Tom', '1976-07-12', 'Bass');
insert into plays values('Tom', '1976-07-12', 'Horn');
insert into plays values('Tom', '1976-07-12', 'Anvil');
insert into plays values('Tom', '1976-07-12', 'Cello');
insert into plays values('Allison', '1992-07-12', 'Tubular Bells');
insert into plays values('Sai', '1958-11-26', 'Violin');
insert into plays values('James', '1977-12-11', 'Violin');
insert into plays values('Kira', '1957-12-14', 'Upright Bass');
insert into plays values('Kira', '1957-12-14', 'Synthesizer');
insert into plays values('Remi', '1988-10-10', 'Tenor Banjo');
insert into plays values('Victoria', '1999-05-01', 'Keyboard');
insert into plays values('Haille', '1948-02-17', 'Keyboard');
insert into plays values('Tom', '1976-07-12', 'Oboe');
insert into plays values('Tom', '1976-07-12', 'English Horn');
insert into plays values('Kim', '1984-07-12', 'Timpani');
insert into plays values('Kim', '1984-07-12', 'Triangle');
insert into plays values('Corinna', '1992-07-12', 'Tambourine');
insert into plays values('Corinna', '1992-07-12', 'Bass Drum');
	
-- example delete statement
insert into plays values('Corinna', '1992-07-12', 'Cello');
delete from plays where name = 'Corinna' and birthdate = '1992-07-12' and instrument = 'Cello';


-- VENUE
insert into venue values('Lebanon Opera House', '03766', 'NH', '1400', '800', '800', '80', '2', '30');
insert into venue values('Flynn Center', '05401', 'VT', 11000, 1411, 3000, 0, 1, 20);
insert into venue values('Huntington Avenue Theatre', '02215', 'MA', 15000, 3000, 1310, 50, 0, 40);
insert into venue values('Attleboro Community Theatre', '02861', 'MA', 500, 1509, 1082, 100, 0, 40);
insert into venue values('Morin Performing Arts Center', '02864', 'RI', 9575, 1922, 2400, 10, 0, 15);
insert into venue values('Majestic Theatre', '10036', 'NY', 22000, 1645, 4000, 100, 0, 40);
	
-- example delete statement
insert into venue values('Majestiv Theatrev', '10045', 'NY', 22000, 1645, 4000, 100, 0, 40);
delete from venue where name = 'Majestiv Theatrev';


-- SHOWNAMES
insert into shownames values('Hamilton');
insert into shownames values('Into The Woods');
insert into ShowNames values('The Phantom of the Opera');
	
-- example delete statement
insert into shownames values('Chicago');
delete from shownames where name = 'Chicago';
	

-- SHOWDATES
insert into showdates values('2019-05-05', 'The Phantom of the Opera');
insert into showdates values('2018-02-12', 'Hamilton');
insert into showdates values('2018-02-14', 'Hamilton');
insert into showdates values('2019-03-30', 'Hamilton');
insert into showdates values('2021-08-24', 'Into The Woods');
insert into showdates values('2018-12-30', 'The Phantom of the Opera');
insert into showdates values('2019-04-07', 'Hamilton');
insert into showdates values('2019-05-04', 'The Phantom of the Opera');
insert into showdates values('2018-02-11', 'Hamilton');
insert into showdates values('2021-08-25', 'Into The Woods');
insert into showdates values('2018-12-31', 'The Phantom of the Opera');
insert into showdates values('2021-08-22', 'Into The Woods');
insert into showdates values('2021-08-21', 'Into The Woods');
insert into showdates values('2019-03-31', 'Hamilton');
insert into showdates values('2018-07-20', 'The Phantom of the Opera');
insert into showdates values('2019-02-02', 'The Phantom of the Opera');
insert into showdates values('2019-02-03', 'The Phantom of the Opera');
insert into showdates values('2018-07-21', 'The Phantom of the Opera');
	
-- example delete statement
insert into showdates values('2037-05-05', 'The Phantom of the Opera');
delete from showdates where "date" = '2037-05-05' and name = 'The Phantom of the Opera';


-- FIRSTSHOW
insert into firstshow values('2018-02-11');
insert into firstshow values('2018-07-20');
insert into firstshow values('2019-03-30');
insert into firstshow values('2019-05-04');
insert into firstshow values('2021-08-21');
insert into firstshow values('2018-12-30');
insert into firstshow values('2019-02-02');
	
-- example delete statement
insert into showdates values('2037-05-05', 'The Phantom of the Opera');
insert into firstshow values('2037-05-05');
delete from firstshow where "date" = '2037-05-05';
delete from showdates where "date" = '2037-05-05' and name = 'The Phantom of the Opera';


-- SHOWWRITERS
insert into showwriters values('Into The Woods', 'Stephen Sondheim', 'James Lapine');
insert into ShowWriters values('The Phantom of the Opera', 'Andrew Lloyd Webber', 'Charles Hart');

-- example delete statement
insert into showwriters values ('Hamilton', 'Lin Manuel Miranda', 'Lin Manuel Miranda');
delete from showwriters where show_name = 'Hamilton';	
	

-- SHOWVENUE
insert into showvenue values('2021-08-21', 'Lebanon Opera House');
insert into showvenue values('2021-08-22', 'Lebanon Opera House');
insert into showvenue values('2021-08-24', 'Flynn Center');
insert into showvenue values('2021-08-25', 'Flynn Center');
insert into showvenue values('2018-07-20', 'Majestic Theatre');
insert into showvenue values('2018-07-21', 'Majestic Theatre');
insert into showvenue values('2018-12-30', 'Majestic Theatre');
insert into showvenue values('2018-12-31', 'Majestic Theatre');
insert into showvenue values('2019-02-02', 'Majestic Theatre');
insert into showvenue values('2019-02-03', 'Majestic Theatre');
insert into showvenue values('2019-05-04', 'Majestic Theatre');
insert into showvenue values('2019-05-05', 'Majestic Theatre');
	
-- example delete statement
insert into showvenue values('2018-02-11', 'Lebanon Opera House');
delete from showvenue where "date" = '2018-02-11' and name = 'Lebanon Opera House';
		

-- VENUETIME
insert into venuetime values('Lebanon Opera House', '12:30:00', 'Tuesday');
insert into venuetime values('Lebanon Opera House', '12:30:00', 'Wednesday');
insert into venuetime values('Flynn Center', '19:00:00', 'Friday');
insert into venuetime values('Flynn Center', '12:30:00', 'Saturday');
insert into venuetime values('Majestic Theatre', '19:00:00', 'Friday');
insert into venuetime values('Majestic Theatre', '17:00:00', 'Saturday');
insert into venuetime values('Majestic Theatre', '17:00:00', 'Sunday');
insert into venuetime values('Majestic Theatre', '19:00:00', 'Monday');

-- example delete statement
insert into venuetime values('Lebanon Opera House', '12:30:00', 'Monday');
delete from venuetime where name = 'Lebanon Opera House' and "time" = '17:00:00' and day = 'Monday';
 

-- COMPANY
insert into company values('The Full Package', 'Flynn Center', 'Catering', 4302.00);
insert into company values('Best Recording', 'Flynn Center', 'Recording', 600.00);
insert into company values(E'Boloco\'s', 'Lebanon Opera House', 'Catering', '500.99');
insert into company values(E'Mike\'s Recording Company', 'Lebanon Opera House', 'Recording', '1250.97');
insert into company values('Bartleby & Sage', 'Majestic Theatre', 'Catering', 2899.00);
insert into company values('Casual Films', 'Majestic Theatre', 'Recording', 2499.00);
	
-- example delete statement
insert into company values(E'Bobby\'s Rip-Rarin\' Ribs', 'Morin Performing Arts Center', 'Recording', 6000.00);
delete from company where name = E'Bobby\'s Rip-Rarin\' Ribs';
	

-- BOOK
insert into book values('Into The Woods', 'Clarinet', 'Bb Clarinet');
insert into book values('Into The Woods', 'Alternate Trumpet in B-Flat', 'Bb Trumpet');
insert into book values('Into The Woods', 'Bass', 'Bass');
insert into book values('Into The Woods', 'Cello', 'Cello');
insert into book values('Into The Woods', 'Horn 1', 'Horn');
insert into book values('Into The Woods', 'Horn 2', 'Horn');
insert into book values('Into The Woods', 'Synthesizer', 'Synthesizer');
insert into book values('Into The Woods', 'Percussion', 'Anvil');
insert into book values('Into The Woods', 'Percussion', 'Bell Tree');
insert into book values('Into The Woods', 'Percussion', 'Bells');
insert into book values('Into The Woods', 'Percussion', 'Chimes');
insert into book values('Into The Woods', 'Percussion', 'Cowbell');
insert into book values('Into The Woods', 'Percussion', 'Crotales');
insert into book values('Into The Woods', 'Percussion', 'Finger Cymbal');
insert into book values('Into The Woods', 'Percussion', 'Rachet');
insert into book values('Into The Woods', 'Percussion', 'Temple Blocks');
insert into book values('Into The Woods', 'Percussion', 'Triangle');
insert into book values('Into The Woods', 'Percussion', 'Wood Block');
insert into book values('Into The Woods', 'Percussion', 'Xylophone');
insert into book values('Into The Woods', 'Piano', 'Piano');
insert into book values('Into The Woods', 'Flute/Piccolo', 'Piccolo');
insert into book values('Into The Woods', 'Flute/Piccolo', 'Flute');
insert into book values('Into The Woods', 'Bassoon', 'Bassoon');
insert into book values('Into The Woods', 'Trumpet in C', 'C Trumpet');
insert into book values('Into The Woods', 'Viola 1', 'Viola');
insert into book values('Into The Woods', 'Viola 2', 'Viola');
insert into book values('Into The Woods', 'Violin 2', 'Violin');
insert into book values('Into The Woods', 'Viola 1', 'Violin');
insert into book values('Hamilton', 'Keyboard 1', 'Keyboard'); -- Victoria
insert into book values('Hamilton', 'Keyboard 2', 'Keyboard'); -- Haille
insert into book values('Hamilton', 'Percussion 1', 'Drums'); -- Nick
insert into book values('Hamilton', 'Percussion 1', 'Latin-Tim Bale'); -- Nick
insert into book values('Hamilton', 'Percussion 1', 'Synthesizer'); -- Nick
insert into book values('Hamilton', 'Percussion 2', 'Mallets'); -- Corinna
insert into book values('Hamilton', 'Percussion 2', 'Glockenspiel'); -- Corinna
insert into book values('Hamilton', 'Percussion 2', 'Tubular Bells'); -- Allison
insert into book values('Hamilton', 'Percussion 2', 'Synthesizer'); -- Corinna
insert into book values('Hamilton', 'Guitar', 'Steel Acoustic'); -- Darren
insert into book values('Hamilton', 'Guitar', 'Nylon Acoustic'); -- Darren
insert into book values('Hamilton', 'Guitar', 'Tenor Banjo'); -- Remi
insert into book values('Hamilton', 'Bass', 'Upright Bass'); -- Kira
insert into book values('Hamilton', 'Bass', 'Synthesizer'); -- Kira
insert into book values('Hamilton', 'String 1', 'Violin'); -- James
insert into book values('Hamilton', 'String 2', 'Violin'); -- Sai
insert into book values('Hamilton', 'String 3', 'Violin'); -- Kim
insert into book values('Hamilton', 'String 3', 'Viola'); -- Kim
insert into book values('Hamilton', 'Cello', 'Cello'); -- Tom
insert into Book values('The Phantom of the Opera', 'Reed 1', 'Flute');
insert into Book values('The Phantom of the Opera', 'Reed 1', 'Piccolo');
insert into Book values('The Phantom of the Opera', 'Reed 2', 'Flute');
insert into Book values('The Phantom of the Opera', 'Reed 2', 'Bb Clarinet');
insert into Book values('The Phantom of the Opera', 'Reed 3', 'Oboe');
insert into Book values('The Phantom of the Opera', 'Reed 3', 'English Horn');
insert into Book values('The Phantom of the Opera', 'Reed 4', 'Bb Clarinet');
insert into Book values('The Phantom of the Opera', 'Reed 4', 'Bass Clarinet');
insert into Book values('The Phantom of the Opera', 'Reed 4', 'Eb Clarinet');
insert into Book values('The Phantom of the Opera', 'Reed 5', 'Bassoon');
insert into Book values('The Phantom of the Opera', 'French Horn 1', 'French Horn');
insert into Book values('The Phantom of the Opera', 'French Horn 2', 'French Horn');
insert into Book values('The Phantom of the Opera', 'French Horn 3', 'French Horn');
insert into Book values('The Phantom of the Opera', 'Trumpet 1', 'Bb Trumpet');
insert into Book values('The Phantom of the Opera', 'Trumpet 2', 'Bb Trumpet');
insert into Book values('The Phantom of the Opera', 'Trombone', 'Trombone');
insert into Book values('The Phantom of the Opera', 'Percussion 1', 'Timpani');
insert into Book values('The Phantom of the Opera', 'Percussion 1', 'Suspended Cymbals');
insert into Book values('The Phantom of the Opera', 'Percussion 1', 'Crash Cymbals');
insert into Book values('The Phantom of the Opera', 'Percussion 1', 'Snare Drum');
insert into Book values('The Phantom of the Opera', 'Percussion 1', 'Triangle');
insert into Book values('The Phantom of the Opera', 'Percussion 1', 'Tambourine');
insert into Book values('The Phantom of the Opera', 'Percussion 1', 'Bass Drum');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Glockenspiel');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Xylophone');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Vibes');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Marimba');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Tubular Bells');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Bell Tree');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Woodblock');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Gong');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Guiro');
insert into Book values('The Phantom of the Opera', 'Percussion 2', 'Finger Cymbals');
insert into Book values('The Phantom of the Opera', 'Keyboard 1', 'Piano');
insert into Book values('The Phantom of the Opera', 'Keyboard 2', 'Synthesizer');
insert into Book values('The Phantom of the Opera', 'Violin 1', 'Violin');
insert into Book values('The Phantom of the Opera', 'Violin 2', 'Violin');
insert into Book values('The Phantom of the Opera', 'Violin 3', 'Violin');
insert into Book values('The Phantom of the Opera', 'Violin 4', 'Violin');
insert into Book values('The Phantom of the Opera', 'Violin 5', 'Violin');
insert into Book values('The Phantom of the Opera', 'Violin 6', 'Violin');
insert into Book values('The Phantom of the Opera', 'Violin 7', 'Violin');
insert into Book values('The Phantom of the Opera', 'Violin 8', 'Violin');
insert into Book values('The Phantom of the Opera', 'Viola 1', 'Viola');
insert into Book values('The Phantom of the Opera', 'Viola 2', 'Viola');
insert into Book values('The Phantom of the Opera', 'Cello 1', 'Cello');
insert into Book values('The Phantom of the Opera', 'Cello 2', 'Cello');
insert into Book values('The Phantom of the Opera', 'String Bass', 'String Bass');
insert into Book values('The Phantom of the Opera', 'Harp', 'Harp');
	
-- example delete statement
insert into Book values('Hamilton', 'Kazoo 1', 'Cello');
delete from Book where show_name = 'Hamilton' and book = 'Kazoo 1' and instrument = 'Cello';


-- BOOKASSIGNMENT
insert into bookassignment values('Victoria', '2019-03-30', '1999-05-01', 'Keyboard 1'); -- Victoria
insert into bookassignment values('Haille', '2019-03-30', '1948-02-17', 'Keyboard 2'); -- Haille
insert into bookassignment values('Nick', '2019-03-30', '2003-07-12', 'Percussion 1'); -- Nick
insert into bookassignment values('Corinna', '2019-03-30', '1992-07-12', 'Percussion 2'); -- Corinna
insert into bookassignment values('Allison', '2019-03-30', '1992-07-12', 'Percussion 2'); -- Allison
insert into bookassignment values('Darren', '2019-03-30', '2001-07-12', 'Guitar'); -- Darren
insert into bookassignment values('Remi', '2019-03-30', '1988-10-10', 'Guitar'); -- Remi
insert into bookassignment values('Kira', '2019-03-30', '1957-12-14', 'Bass'); -- Kira
insert into bookassignment values('James', '2019-03-30', '1977-12-11', 'String 1'); -- James
insert into bookassignment values('Sai', '2019-03-30', '1958-11-26', 'String 2'); -- Sai
insert into bookassignment values('Kim', '2019-03-30', '1984-07-12', 'String 3'); -- Kim
insert into bookassignment values('Tom', '2019-03-30', '1976-07-12', 'Cello'); -- Tom
insert into bookassignment values('Kim', '2021-08-21', '1984-07-12', 'Violin 2');
insert into bookassignment values('Tom', '2021-08-21', '1976-07-12', 'Alternate Trumpet in B-Flat');
insert into bookassignment values('Tom', '2018-07-20', '1976-07-12', 'Reed 3');
insert into bookassignment values('Kim', '2018-07-20', '1984-07-12', 'Percussion 1');
insert into bookassignment values('Corinna', '2018-07-20', '1992-07-12', 'Percussion 1');
	
-- example delete statement
insert into bookassignment values('Haille', '2021-08-21', '1948-02-17', 'Horn 1');
delete from bookassignment where name = 'Haille' and birthdate = '1948-02-17' and book = 'Horn 1' and show_date = '2021-08-21';
	

-- INSTRUMENTASSIGNMENT
insert into instrumentassignment values('Victoria', '1999-05-01', '2019-03-30', 'Keyboard'); -- Victoria
insert into instrumentassignment values('Haille', '1948-02-17', '2019-03-30', 'Keyboard'); -- Haille
insert into instrumentassignment values('Nick', '2003-07-12', '2019-03-30', 'Drums'); -- Nick
insert into instrumentassignment values('Nick', '2003-07-12', '2019-03-30', 'Latin-Tim Bale'); -- Nick
insert into instrumentassignment values('Nick', '2003-07-12', '2019-03-30', 'Synthesizer'); -- Nick
insert into instrumentassignment values('Corinna', '1992-07-12', '2019-03-30', 'Mallets'); -- Corinna
insert into instrumentassignment values('Corinna', '1992-07-12', '2019-03-30', 'Glockenspiel'); -- Corinna
insert into instrumentassignment values('Corinna', '1992-07-12', '2019-03-30', 'Synthesizer'); -- Corinna
insert into instrumentassignment values('Allison', '1992-07-12', '2019-03-30', 'Tubular Bells'); -- Allison
insert into instrumentassignment values('Darren', '2001-07-12', '2019-03-30', 'Steel Acoustic'); -- Darren
insert into instrumentassignment values('Darren', '2001-07-12', '2019-03-30', 'Nylon Acoustic'); -- Darren
insert into instrumentassignment values('Remi', '1988-10-10', '2019-03-30', 'Tenor Banjo'); -- Remi
insert into instrumentassignment values('Kira', '1957-12-14', '2019-03-30', 'Upright Bass'); -- Kira
insert into instrumentassignment values('Kira', '1957-12-14', '2019-03-30', 'Synthesizer'); -- Kira
insert into instrumentassignment values('James', '1977-12-11', '2019-03-30', 'Violin'); -- James
insert into instrumentassignment values('Sai', '1958-11-26', '2019-03-30', 'Violin'); -- Sai
insert into instrumentassignment values('Kim', '1984-07-12', '2019-03-30', 'Violin'); -- Kim
insert into instrumentassignment values('Kim', '1984-07-12', '2019-03-30', 'Viola'); -- Kim
insert into instrumentassignment values('Tom', '1976-07-12', '2019-03-30', 'Cello'); -- Tom
insert into instrumentassignment values('Kim', '1984-07-12', '2021-08-21', 'Violin');
insert into instrumentassignment values('Tom', '1976-07-12', '2021-08-21', 'Bb Trumpet');
insert into instrumentassignment values('Tom', '1976-07-12', '2018-07-20', 'Oboe');
insert into instrumentassignment values('Tom', '1976-07-12', '2018-07-20', 'English Horn');
insert into instrumentassignment values('Kim', '1984-07-12', '2018-07-20', 'Timpani');
insert into instrumentassignment values('Kim', '1984-07-12', '2018-07-20', 'Triangle');
insert into instrumentassignment values('Corinna', '1992-07-12', '2018-07-20', 'Tambourine');
insert into instrumentassignment values('Corinna', '1992-07-12', '2018-07-20', 'Bass Drum');

-- example delete statement
insert into instrumentassignment values('Haille', '1948-02-17', '2021-08-21',  'Violin');
delete from instrumentassignment where name = 'Haille' and birthdate = '1948-02-17' and instrument = 'Violin' and show_date = '2021-08-21';


-- TICKET
insert into ticket values('Child', '5.00');
insert into ticket values('Student', '10.00');
insert into ticket values('Adult', '15.00');
insert into ticket values('Senior', '7.50');
	
-- example delete statement
insert into ticket values('Unnecessarily Wealthy', '100.00');
delete from ticket where type = 'Unnecessarily Wealthy';
	

-- TRANSPORTATION
insert into transportation values('Bus', '2021-08-21', '54', '100', '20');
insert into transportation values('Van', '2021-08-21', '8', '150', '50');
insert into transportation values('Plane', '2021-08-21', '150', '50', '200');
insert into transportation values('Train', '2021-08-21', '150', '200', '60');
	
-- example delete statement
insert into transportation values('Teleport', '2021-08-21', '600', '600', '600');
delete from transportation where type = 'Teleport' and "date" = '2021-08-21';

	
-- DONORTIER
insert into donortier values('Friend', '50');
insert into donortier values('Family', '100');
insert into donortier values('Donor', '0');
insert into donortier values('Angel', '500');
insert into donortier values('Arts Connoiseur', '1000');
	
-- example delete statement
insert into donortier values('Unnecessarily Wealthy', '10000');
delete from ticket where type = 'Unnecessarily Wealthy';
		

-- DONORS
insert into donors values('Ed', '1982-07-12', '3153598762', 'eharcourt@stlawu.edu');
insert into donors values('Kevin', '1980-07-12', '3153598767', 'kangstadt@stlawu.edu');
insert into donors values('Lisa', '1989-07-12', '3153598768', 'ltorrey@stlawu.edu');
insert into donors values('Choong-Soo', '1984-07-21', '3156789042', 'clee@stlawu.edu');
	
-- example delete statement
insert into donors values('Angel of Music', '1882-03-16', '4987654352', 'theOGofManhattan@comcast.net');
delete from donors where name = 'Angel of Music' and birthdate = '1882-03-16';


-- DONATIONS
insert into donations values('Ed', '1982-07-12', '2018-07-20', '1009', TRUE);
insert into donations values('Kevin', '1980-07-12', '2018-07-20', '123', TRUE);
insert into donations values('Lisa', '1989-07-12', '2018-07-20', '37', FALSE);
insert into donations values('Choong-Soo', '1984-07-21', '2018-07-20', '20', FALSE);
insert into donations values('Ed', '1982-07-12', '2019-03-30', 5640, FALSE);
insert into donations values('Ed', '1982-07-12', '2021-08-21', '10', FALSE);
insert into donations values('Kevin', '1980-07-12', '2021-08-21', '1001', TRUE);
insert into donations values('Lisa', '1989-07-12', '2021-08-21', '985', FALSE);
insert into donations values('Choong-Soo', '1984-07-21', '2021-08-21', '600', FALSE);
	
-- example delete statement
insert into donations values('Kevin', '1980-07-12', '2019-03-30', '123', TRUE);
delete from donations where name = 'Kevin' and birthdate = '1980-07-12' and show_date = '2019-03-30' and amount = '123' and anonymous = TRUE;
	

-- CHARACTERS
insert into characters values('Hamilton', 'King George');
insert into characters values('Hamilton', 'Aaron Burr');
insert into characters values('Hamilton', 'Alexander Hamilton');
insert into characters values('Hamilton', 'Eliza Hamilton');
insert into characters values('Hamilton', 'Angelica Schuyler');
insert into characters values('Hamilton', 'Peggy Schuyler');
insert into characters values('Hamilton', 'John Laurens');
insert into characters values('Into The Woods', E'The Baker\'s Wife');
insert into characters values('Into The Woods', 'The Baker');
insert into characters values('Into The Woods', 'The Witch');
insert into characters values('Into The Woods', 'Cinderella');
insert into characters values('Into The Woods', 'Big Bad Wolf');
insert into characters values('Into The Woods', 'Lucinda');
insert into characters values('Into The Woods', E'Rapunzel\'s Prince');
insert into characters values('Into The Woods', E'Jack\'s Mother');
insert into characters values('Into The Woods', 'Florinda');
insert into characters values('Into The Woods', 'Little Red Riding Hood');
insert into characters values('Into The Woods', E'Cinderella\'s Mother');
insert into characters values('Into The Woods', E'Cinderella\'s Stepmother');
insert into characters values('Into The Woods', E'Cinderella\'s Father');
insert into characters values('Into The Woods', 'Princess Aurora');
insert into characters values('Into The Woods', 'Prince Charming');
insert into characters values('Into The Woods', 'Willie the Giant');
insert into characters values('Into The Woods', 'Jack');
insert into characters values('Into The Woods', 'The Mysterious Man');
insert into characters values('Into The Woods', 'Grandmother');
insert into characters values('Into The Woods', 'Steward');
insert into characters values('Into The Woods', 'Milky White');
insert into characters values('Into The Woods', 'Narrator');
insert into characters values('Into The Woods', 'Snow White');
insert into Characters values('The Phantom of the Opera', 'The Phantom of the Opera');
insert into Characters values('The Phantom of the Opera', 'Christine Daae');
insert into Characters values('The Phantom of the Opera', 'Raoul de Chagny');
insert into Characters values('The Phantom of the Opera', 'Carlotta Giudicelli');
insert into Characters values('The Phantom of the Opera', 'Monsieur Gilles Andre');
insert into Characters values('The Phantom of the Opera', 'Monsieur Richard Firmin');
insert into Characters values('The Phantom of the Opera', 'Madame Giry');
insert into Characters values('The Phantom of the Opera', 'Ubaldo Piangi');
insert into Characters values('The Phantom of the Opera', 'Meg Giry');
	
-- example delete statement
insert into Characters values('Into The Woods', 'Samwise Gamgee');
delete from Characters where show_name = 'Into The Woods' and character = 'Samwise Gamgee'; 

-- ROLE
insert into role values('2019-03-30', 'James', '1953-07-12', 'Aaron Burr');
insert into role values('2019-03-30', 'Will', '1971-07-12', 'King George');
insert into role values('2019-03-30', 'Will', '1971-07-12', 'Alexander Hamilton');
insert into role values('2019-03-30', 'Danial', '2001-07-12', 'Eliza Hamilton');
insert into role values('2019-03-30', 'James', '1953-07-12', 'Angelica Schuyler');
insert into role values('2019-03-30', 'Nick', '1954-01-03', 'Peggy Schuyler');
insert into role values('2019-03-30', 'Danial', '2001-07-12', 'John Laurens');
insert into role values('2021-08-21', 'Will', '1971-07-12', 'Jack');
insert into role values('2021-08-21', 'James', '1953-07-12', E'Rapunzel\'s Prince');
insert into role values('2021-08-21', 'Danial', '2001-07-12', E'The Baker\'s Wife');
insert into role values('2018-07-20', 'James', '1953-07-12', 'The Phantom of the Opera');
insert into role values('2018-07-20', 'Will', '1971-07-12', 'Raoul de Chagny');
	
-- example delete statement
insert into role values('2021-08-21', 'Nick', '1954-01-03', 'Snow White');
delete from role where show_date = '2021-08-21' and name = 'Nick' and birthdate = '1954-01-03' and character = 'Snow White';


-- UNDERSTUDY
insert into understudy values('2021-08-21', 'Danial', '2001-07-12', 'Jack');
insert into understudy values('2018-07-20', 'Danial', '2001-07-12', 'The Phantom of the Opera');
insert into understudy values('2018-07-20', 'Nick', '1954-01-03', 'Raoul de Chagny');
	
-- example delete statement
insert into understudy values('2019-03-30', 'James', '1953-07-12', 'Alexander Hamilton');
delete from understudy where show_date = '2019-03-30' and name = 'James'
	and birthdate = '1953-07-12' and character = 'Alexander Hamilton';
	

-- HOURS
insert into hours values('2018-02-11', 'Darren', '2001-07-12', 6);
insert into hours values('2018-02-11', 'Nick', '2003-07-12', 3);
insert into hours values('2018-02-11', 'Corinna', '1992-07-12', 4);
insert into hours values('2018-02-11', 'Kim', '1984-07-12', 3);
insert into hours values('2018-02-11', 'Tom', '1976-07-12', 6);
insert into hours values('2018-02-11', 'Allison', '1992-07-12', 20);
insert into hours values('2018-02-11', 'Sai', '1958-11-26', 2);
insert into hours values('2018-02-11', 'James', '1977-12-11', 13);
insert into hours values('2018-02-11', 'Kira', '1957-12-14', 2);
insert into hours values('2018-02-11', 'Remi', '1988-10-10', 6);
insert into hours values('2018-02-11', 'Victoria', '1999-05-01', 3);
insert into hours values('2018-02-11', 'Haille', '1948-02-17', 15);
insert into hours values('2019-03-30', 'Darren', '2001-07-12', 10);
insert into hours values('2019-03-30', 'Nick', '2003-07-12', 14);
insert into hours values('2019-03-30', 'Corinna', '1992-07-12', 3);
insert into hours values('2019-03-30', 'Kim', '1984-07-12', 11);
insert into hours values('2019-03-30', 'Tom', '1976-07-12', 19);
insert into hours values('2019-03-30', 'Allison', '1992-07-12', 15);
insert into hours values('2019-03-30', 'Sai', '1958-11-26', 12);
insert into hours values('2019-03-30', 'James', '1977-12-11', 12);
insert into hours values('2019-03-30', 'Kira', '1957-12-14', 17);
insert into hours values('2019-03-30', 'Remi', '1988-10-10', 14);
insert into hours values('2019-03-30', 'Victoria', '1999-05-01', 9);
insert into hours values('2019-03-30', 'Haille', '1948-02-17', 8);
insert into hours values('2021-08-21', 'Danial', '2001-07-12', '16');
insert into hours values('2021-08-21', 'James', '1953-07-12', '10');
insert into hours values('2021-08-21', 'Kim', '1984-07-12', '12');
insert into hours values('2018-07-20', 'James', '1953-07-12', 15);
insert into hours values('2018-07-20', 'Will', '1971-07-12', 13);
insert into hours values('2018-07-20', 'Danial', '2001-07-12', 8);
insert into hours values('2018-07-20', 'Nick', '1954-01-03', 6);
insert into hours values('2018-07-20', 'Tom', '1976-07-12', 11);
insert into hours values('2018-07-20', 'Kim', '1984-07-12', 10);
insert into hours values('2018-07-20', 'Corinna', '1992-07-12', 12);
	
-- example delete statement
insert into hours values('2018-07-20', 'Victoria', '1999-05-01', 12);
delete from hours where show_date = '2021-08-21' and name = 'Kim' and birthdate = '1984-07-12';
	

-- WAGES
insert into wages values('Darren', '2001-07-12', 2019, 22);
insert into wages values('Nick', '2003-07-12', 2019, 22);
insert into wages values('Corinna', '1992-07-12', 2019, 25);
insert into wages values('Kim', '1984-07-12', 2019, 25);
insert into wages values('Tom', '1976-07-12', 2019, 28);
insert into wages values('Allison', '1992-07-12', 2019, 21);
insert into wages values('Sai', '1958-11-26', 2019, 35);
insert into wages values('James', '1977-12-11', 2019, 30);
insert into wages values('Kira', '1957-12-14', 2019, 23);
insert into wages values('Remi', '1988-10-10', 2019, 22);
insert into wages values('Victoria', '1999-05-01', 2019, 22);
insert into wages values('Haille', '1948-02-17', 2019, 22);
insert into wages values('Danial', '2001-07-12', '2021', '23.00');
insert into wages values('James', '1953-07-12', '2021', '25.00');
insert into wages values('Kim', '1984-07-12', '2021', '20.00');
insert into wages values('Tom', '1976-07-12', 2018, 20);
insert into wages values('Corinna', '1992-07-12', 2018, 20);
insert into wages values('Will', '1971-07-12', 2018, 20);
insert into wages values('Nick', '1954-01-03', 2018, 20);
	
-- example delete statement
insert into wages values('Kim', '1984-07-12', '2018', '20.00');
delete from wages where name = 'Kim' and birthdate = '1984-07-12' and year = '2018';

-- UPDATES
-- One of our functional requirements was that things could be updated! Our examples so far allow that by
-- insert/delete, but to update we could also do something like:
update wages set wage = 40 where name = 'Corinna' and birthdate = '1992-07-12' and year = '2018';
