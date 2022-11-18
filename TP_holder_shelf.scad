use <NOP/utils/core/rounded_rectangle.scad>
use <NOP/utils/core/global.scad>
include <BOSL/constants.scad>
include <BOSL/threading.scad>

$fn = 60;

a=160; b=160; c=160;
d=10; e=15; f=4;
slop=0.42;
thread_depth=0.5;
thread_dia=30;

size=[a,b,c];

difference() {
    difference() {
        difference() {
            rounded_cube_xy(size, r = 3, xy_center = false, z_center = false);
            translate([e-5,e,e]) 
				rounded_cube_xy(size, r=3, xy_center=false, z_center=false);
        }
        translate([-f,-f-1,-f/2]) 
			rounded_cube_xy([a,d,c+f], r=3, xy_center = false, z_center = false);
    }
    translate([a/1.75,b/1.75,e/2]) 
		threaded_rod(d=thread_dia+slop+thread_depth, l=e*2, pitch=2, $fa=1, $fs=1);
}