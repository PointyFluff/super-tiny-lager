$fn=60;
slop=0.25;
units=8;
count=8;

module micro_sd_card_array(units, count, slop, center=false) {
    module a() {
        for(i=[0:units:count*units]) {
            translate([i,0,0]) {
                difference() {
                    color(c=[0.5,0.61,0.1,0.5]) cube([units,units*2+units/2,units*2],center=true);
                    translate([0,0,units-(3+slop)]) cube([1.1+slop,11+slop-0.1,15+slop],center=true);
                }
            }
        }
    }
    if(center) {
        cx=(units*count)/2;
        translate([-cx,0,0]) a();
    } else {
        translate([units-(units/2),units+(units/4),units]) a();
    }
}

difference() {
    translate([0,0,units-1.49]) micro_sd_card_array(units, count, slop, center=true);
    cube([60,10,3],center=true);
}