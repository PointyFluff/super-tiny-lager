$fn=36;

difference() {
	cylinder(r=5, h=12);
	translate([0,0,8.1])
		cylinder(r=3, h=4, $fn=12);
}