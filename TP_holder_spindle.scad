include <BOSL/constants.scad>
include <BOSL/threading.scad>

$fn=60;
rd=30;
nod=rd+rd/6;
nid=rd;
rl=30;
nl=rl / 2;
cr3_slop=0.42;
td=0.5;

union() {
    difference() {
        union() {
            translate([0,0,24.5])cylinder(r=18, h=125);
            translate([0,0,10])threaded_rod(d=rd, l=rl, pitch=2, $fa=1, $fs=1);
        }
        translate([0,0,125+20]) cylinder(r=16,h=5);
    }
    translate([0,0,9.5])cylinder(15,0,18);
}