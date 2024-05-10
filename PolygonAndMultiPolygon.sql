create table regions(
	region_id int auto_increment primary key,
    region_name varchar(100),
    region_boundary polygon

);


insert into regions(region_name, region_boundary) values('Delhi',
	PolygonFromText('POLYGON((28.882690362725786 77.08287080036622, 28.71420858423687 77.33074981120104, 28.403613402297168 77.1735080010039, 28.582242256618592 76.84048495320643, 28.882690362725786 77.08287080036622))')

);

insert into regions(region_name, region_boundary) values('Mumbai',
	PolyFromText('POLYGON((0 0, 50 0, 50 50, 0 50, 0 0), (10 10, 20 10, 20 20, 10 20, 10 10))')
);


select regions.*, st_astext(region_boundary) from regions;

select regions.*, centroid(region_boundary) from regions;

select area(polygonfromtext('Polygon((0 0, 3 0, 3 3, 0 3, 0 0))'))


select centroid(polygonfromtext('Polygon((0 0, 3 0, 3 3, 0 3, 0 0))'))


SELECT polyfromwkb(AsWKB(Polygon(LineString(Point(0, 0), Point( 50, 0), Point(50, 50),Point(0, 50),Point(0, 0)))));


select st_geomfromtext('multipolygon(((0 0, 3 0, 3 3, 0 3, 0 0)), ((0 0, 50 0, 50 50, 0 50, 0 0)))')