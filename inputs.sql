INSERT INTO person VALUES(1,'Robert Plant', 'Led Zeppelin', 'Singer');
INSERT INTO person VALUES(2,'John Paul Jones', 'Led Zeppelin', 'Bass Player');
INSERT INTO person VALUES(3,'John Bonham', 'Led Zeppelin', 'Drummer');
INSERT INTO person VALUES(4,'Jimmy Page', 'Led Zeppelin', 'Guitarist');

INSERT INTO person VALUES(5,'David Gilmour', 'Pink Floyd', 'Singer, Guitarist');
INSERT INTO person VALUES(6,'Richard Wright', 'Pink Floyd', 'Singer, Pianist');
INSERT INTO person VALUES(7,'Nick Mason', 'Pink Floyd', 'Drummer');
INSERT INTO person VALUES(8,'Roger Waters', 'Pink Floyd', 'Singer, Bass Player');
INSERT INTO person VALUES(9,'Syd Barrett', 'Pink Floyd', 'Singer, Guitarist');

INSERT INTO person VALUES(10,'');

INSERT INTO room VALUES(1,'Abbey Road',10,12000,FALSE, TRUE);
INSERT INTO room VALUES(2,'Sunset Sound Recorders',8,10000,FALSE, TRUE);
INSERT INTO room VALUES(3,'Polar Studios',7,5000,TRUE, TRUE);


INSERT INTO meeting VALUES(1,1,5,'2018-04-26', 10.00,18.00); --David Gilmour books abbey road today
INSERT INTO meeting VALUES(2,2,2,'2018-05-02', 10.00,18.00); --John Paul Jones books sunset sound next week
INSERT INTO meeting VALUES(3,3,1,'2018-04-27', 9.00,19.00); --Robert Plant books Polar Studios tomorrow


INSERT INTO attendant VALUES(5,1); -- All of PF attend meeting 1
INSERT INTO attendant VALUES(6,1);
INSERT INTO attendant VALUES(7,1);
INSERT INTO attendant VALUES(8,1);
INSERT INTO attendant VALUES(9,1);

INSERT INTO attendant VALUES(1,2); -- All of LZ attend meeting 2
INSERT INTO attendant VALUES(2,2);
INSERT INTO attendant VALUES(3,2);
INSERT INTO attendant VALUES(4,2);

INSERT INTO attendant VALUES(1,3); -- All of LZ attend meeting 3
INSERT INTO attendant VALUES(2,3);
INSERT INTO attendant VALUES(3,3);
INSERT INTO attendant VALUES(4,3);