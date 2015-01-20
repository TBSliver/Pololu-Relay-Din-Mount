rotate([90,0,0])
difference() {
  translate([0,-2,-2]) cube([30,30,8], center=true);
  cube([27,30,2], center=true);
  translate([0,-2,2]) cube([25,32,3], center=true);
  translate([0,0,-2]) cube([25,30,3], center=true);
}
