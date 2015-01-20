module relay_clamp() {
  rotate([90,0,0])
    difference() {
      translate([0,-2,-2]) cube([30,35,8], center=true);
      cube([27,35,2], center=true);
      translate([1/2,-2,2]) cube([23,37,3], center=true);
      translate([0,0,-2]) cube([22,35,3], center=true);
    }
}

module mounting_plate() {
  translate([0,0,-4/2]) difference() {
    cube([15,2,35], center=true);
    for (z=[-10,10]) translate([-3,0,z]) rotate([90,0,0]) cylinder(d=5, h=4, center=true);
  }
}

union() {
  for(n=[0:3])  
    translate([n*30,0,0]) relay_clamp();
  translate([-17,5,0]) mounting_plate();
  translate([107,5,0]) mirror([1,0,0]) mounting_plate();
}
