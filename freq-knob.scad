$fn=20;


difference() {
	union() {
		cylinder(r1=5.94, r2=15, h=6);
		translate([0,0,6]) cylinder(r=15, h=1);
	}
	translate([0,0,1.2])
		cylinder(r=3.1, h=6);
}



union() {
	translate([0,0,-8]) cylinder(r=8,h=10);
	translate([-7.9,-0.5,-8.25]) cube([16.2,1,1]);
}
