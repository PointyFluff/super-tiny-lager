$fn=120;

height=2;

difference() {
	hull() {
		translate([-25,-15,0]) { cylinder (r=2, h=height); }
		translate([ 25,-15,0]) { cylinder (r=2, h=height); }
		translate([ 25, 15,0]) { cylinder (r=2, h=height); }
		translate([-25, 15,0]) { cylinder (r=2, h=height); }
	}
	translate([0,0,-1]) {
		hull() {
			translate([-10,0,0]) { cylinder(r=12, h=height+2); }
			translate([10,0,0])  { cylinder(r=12, h=height+2); }
		}
	}
}