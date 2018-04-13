--Insert new users, 
INSERT INTO person VALUES(args[0],args[1],args[2],args[3], args[4]);

--delete old users,
DELETE FROM [ ONLY ] person 
WHERE id = args[0] OR (first_name = args[0] AND last_name = args[1]);

--insert and delete teams (all this must not affect the log of costs already accrued). 
INSERT INTO team(args[0]);

DELETE FROM [ ONLY ] team
WHERE name = args[0];

--Answer queries about what rooms are available for a given time slot.
SELECT name 
from room
join meetings on room.id = meeting.room 
WHERE NOT (meeting.date = args[0] AND meeting.time = args[1] AND meeting.end_time < args[1]); --incomplete!

--Add new meetings, but reject attempts to book meetings that would overlap with already booked ones.
--Delete meetings that have not occured yet. 
--is if statement in the main program the best solution?
--How to verify the user? Maybe allow them to click their user name -> select all meetings booked in that name.id and show them in a menu with buttons 
-- -> then delete the meeting (meetings? allow multiple choice, or prevent this with radio buttons?) from the database -> delete the cost of this meeting from cost 
--
DELETE FROM [ONLY] meeting
WHERE 

--Present occupation lists for all rooms on a given date. 
SELECT meeting.time, meeting.time + meeting.duration [AS] 'booked until'
from meeting
WHERE meeting.date = args[0];




--Show which user booked which meetings
SELECT room.name, meeting.time, meeting.date, person.name
FROM meeting
JOIN person on meeting.booker = person.id
JOIN room on meeting.room = room.id;

--Show all participants of a given meeting.
--right now: show all participants of all meetings
SELECT person.name, date, time, room.name
FROM person
JOIN attendant on person.id = attendant.person
JOIN meeting on meeting.id = attendant.meeting
JOIN room on meeting.room = room.id
WHERE meeting.date >= '2017-01-01' AND meeting.date <= '2018-05-30'
ORDER BY date ASC;

--Show cost accrued by teams for any given time interval. 
-- could be obsolete to have a cost table, depends on how you wish to structure the database 
SELECT sum(sum)
FROM cost
WHERE (cost.date >= args[0] AND cost.date <= args[1]) -- date falls in the given intervall
GROUP BY team;

--total cost accrued by every team
SELECT person.team, SUM((meeting.duration-meeting.time)*room.cost)
FROM meeting
JOIN room on meeting.room = room.id
JOIN person on meeting.booker = person.id
GROUP BY person.team;