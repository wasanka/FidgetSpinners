bearingSize = 22;
weightSize = 16;
wallThickness = 5;
depth = 5;

$fn = 60;

difference(){
    cylinder(d=bearingSize + 2 * wallThickness, h=depth, center = true);
    cylinder(d=bearingSize, h=depth + 2, center = true);
}

module wing(){
rotate([0, 0, 0]) translate([40, 0, 0]){
    union(){
        difference(){
            cylinder(d=weightSize + 2 * wallThickness, h=depth, center = true);
            cylinder(d=weightSize, h=depth + 2, center = true);
            
            rotate([0, 0, -20]) translate([3, 14, 0]) cube([30, 10, depth + 2], center = true);
            rotate([0, 0, 20]) translate([3, -14, 0]) cube([30, 10, depth + 2], center = true);
        }
        
        rotate([0, 0, 20]) translate([-14, 11.5, 0]) cube([25, 4, depth], center = true);
        rotate([0, 0, -20]) translate([-14, -11.5, 0]) cube([25, 4, depth], center = true);
        translate([-5.8, 9.65, 0]) cylinder(d=5, h=depth, center = true);
        translate([9.75, 4, 0]) cylinder(d=5, h=depth, center = true);
        rotate([0, 0, -20]) translate([-0.5, 8.8, 0]) cube([16, 1.5, depth], center = true);
        
        rotate([0, 0, 20]) translate([-14, 11.5, 0]) cube([25, 4, depth], center = true);
        rotate([0, 0, -20]) translate([-14, -11.5, 0]) cube([25, 4, depth], center = true);
        translate([-5.8, -9.65, 0]) cylinder(d=5, h=depth, center = true);
        translate([9.75, -4, 0]) cylinder(d=5, h=depth, center = true);
        rotate([0, 0, 20]) translate([-0.5, -8.8, 0]) cube([16, 1.5, depth], center = true);
        
        difference(){
            translate([-24, 0, 0]) cube([3, 5, depth], center = true);
            translate([-22, 0, 0]) cylinder(d=4, h=depth+2, center = true);
        }
        
        translate([-13.39, 4.15, 0]) rotate([0, 0, 20])  {
            difference(){
                rotate([0, 0, 25]) translate([2, 0, 0]) cube([3, 5, depth], center = true);
                cylinder(d=2.05, h=depth+2, center = true);
            }
        }
        
        translate([-13.39, -4.15, 0]) rotate([0, 0, -60])  {
            difference(){
                rotate([0, 0, 25]) translate([2, 0, 0]) cube([3, 5, depth], center = true);
                cylinder(d=2.05, h=depth+2, center = true);
            }
        }
    }
}
}

rotate([0, 0, 0]) wing();
rotate([0, 0, 120]) wing();
rotate([0, 0, 240]) wing();