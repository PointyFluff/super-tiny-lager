use <MCAD/boxes.scad>

// c bat radius & width (+ printer slop)
r=26;
w=52;
count = 4;
stack = 2;
walls = 2;
base  = 3;


difference() {
    translate([0,0,-(base)])
        roundedBox(size=[count*r+walls*2, w+walls*2, stack*r+base],radius=4, sidesonly=true);
    cube([count*r, w, stack*r], center=true);
}