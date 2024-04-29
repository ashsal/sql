create table locations(
	location_id int auto_increment primary key,
    name varchar(200),
    coordinates point
);

insert into locations(name, coordinates) values('delhi', point(28.672905203910535, 77.18179953126432));

select * from locations;


select x(coordinates), y(coordinates), st_astext(coordinates), coordinates from locations;

select st_distance(point(28.70429106050971, 77.10229581003944), point(28.53465768211476, 77.39129541764957)) * 100


select st_distance(point(28.719645336450284, 77.22498324374186), point(19.077681762686428, 72.848643038295)) * 111.195

select st_equals(point(28.719645336450284, 77.22498324374186), point(19.077681762686428, 72.848643038295))


select st_equals(point(28.719645336450284, 77.22498324374186), point(28.719645336450284, 77.22498324374186))

create table location_landmarks(
	location_id int auto_increment primary key,
    name varchar(200),
    coordinates point,
    landmarks multipoint
);

insert into location_landmarks(name, coordinates, landmarks) values('delhi', point(28.672905203910535, 77.18179953126432), multipoint(point(28.65583971358885, 77.24256030139124), point(28.636140630864602, 77.18936498729354), point(28.595651456481814, 77.25332235915668)));

select st_astext(landmarks) from location_landmarks;
