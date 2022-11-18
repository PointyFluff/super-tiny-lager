include <BOSL/constants.scad>
include <BOSL/threading.scad>

sl=0.4;
td=30;
d=42;
ht=5;

threaded_nut(od=d, id=td, slop=sl, h=ht, pitch=2, $fa=1, $fs=1);