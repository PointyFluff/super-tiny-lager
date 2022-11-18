$fn=60;
slop=-0.10;
bat_l_real = 26.25;
bat_w_real = 16.98;
bat_h_real = 47.78;
bat_corner_radius=2;
bat_padding = 8;
bat_l_void = (bat_l_real-(bat_corner_radius*2))+slop;
bat_w_void = (bat_w_real-(bat_corner_radius*2))+slop;
bat_h_void = bat_h_real / 6;
bat_l_cube = bat_l_void + bat_padding;
bat_w_cube = bat_w_void + bat_padding;
bat_h_cube = bat_h_void + bat_padding;
bat_translate = bat_padding / 2;

for(i=[0:bat_l_cube:bat_l_cube*1]){
    for(j=[0:bat_w_cube:bat_w_cube*5]) {
        translate([i,j,0])
        difference () {
            cube([bat_l_cube, bat_w_cube, bat_h_cube]);
            translate([bat_translate,bat_translate, bat_translate])
            minkowski() {
                cube([bat_l_void,bat_w_void,bat_h_void]);
                cylinder(h=bat_h_void, r=bat_corner_radius);
            }
        }
    }
}
// difference () {
//     cube([bat_l_cube, bat_w_cube, bat_h_cube]);
//     translate([bat_translate,bat_translate, bat_translate])
//     minkowski() {
//         cube([bat_l_void,bat_w_void,bat_h_void]);
//         cylinder(h=bat_h_void, r=bat_corner_radius);
//     }
// }