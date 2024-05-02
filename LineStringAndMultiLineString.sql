create table path(
	path_id int auto_increment primary key,
    start_city varchar(100),
    end_city varchar(100),
    path linestring
);

select path.*, st_astext(path) from path;

insert into path(start_city, end_city, path) values('delhi', 'noida',
linestring(point(28.703719251648764, 77.10258913599172), point(28.634736961998406, 77.22687196413882), point(28.535551993549557, 77.3923535198485))
);

select st_startpoint(path) from path;

select st_astext(st_endpoint(path)) from path;

select st_astext(st_pointn(path, 2)) from path;

select st_length(path) * 100 from path;

select st_isclosed(linestring(point(28.703719251648764, 77.10258913599172), point(28.634736961998406, 77.22687196413882), point(28.535551993549557, 77.3923535198485), point(28.703719251648764, 77.10258913599172)))


select st_equals(
linestring(point(28.703719251648765, 77.10258913599172), point(28.634736961998406, 77.22687196413882), point(28.535551993549557, 77.3923535198485)),
linestring(point(28.703719251648764, 77.10258913599172), point(28.634736961998406, 77.22687196413882), point(28.535551993549557, 77.3923535198485))
)

select st_crosses(
linestring(point(28.76543340639372, 77.11460543153082), point(28.76844292046371, 77.32162903753274)),
linestring(point(28.721484621211573, 77.21142244130286), point(28.803346939710977, 77.21416902314036))
)



select st_crosses(
linestring(point(28.76543340639372, 77.11460543153082), point(28.76844292046371, 77.32162903753274)),
linestring(point(28.482454176377626, 77.20524263216846), point(28.481548868322854, 77.40848968814383))
)


create table multiple_paths(
	path_id int auto_increment primary key,
    start_city varchar(100),
    end_city varchar(100),
    paths multilinestring
);

insert into multiple_paths(start_city, end_city, paths) values('delhi', 'noida',
multilinestring(
linestring(point(28.703719251648764, 77.10258913599172), point(28.634736961998406, 77.22687196413882), point(28.535551993549557, 77.3923535198485)),
linestring(point(28.702815847165937, 77.10224581326204), point(28.593144932266192, 77.24300813243417), point(28.53645683825685, 77.3920101971188))
)
);

select multiple_paths.*, st_astext(paths) from multiple_paths;