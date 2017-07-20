bearingSize = 22;
weightSize = 13.75;
wallThickness = 5;
depth = 7;

$fn = 60;

difference(){
    union(){
        translate([1.75*weightSize,0,0]) cylinder(h=depth, d=weightSize + 2 * wallThickness, center=true);
        translate([21.5,0,0]) rotate([0, 0, 180]) difference(){
            cylinder(h=depth, d=1.3*bearingSize, center=true);
            translate([16,0,0]) cylinder(h=depth + 2, d=2*bearingSize, center=true);
        }
    }
    translate([1.75*weightSize,0,0]) sphere(d=weightSize);
}
difference(){
    union(){
        translate([-1.75*weightSize,0,0]) cylinder(h=depth, d=weightSize + 2 * wallThickness, center=true);
        translate([-21.5,0,0]) rotate([0, 0, 0]) difference(){
            cylinder(h=depth, d=1.3*bearingSize, center=true);
            translate([16,0,0]) cylinder(h=depth + 2, d=2*bearingSize, center=true);
        }
    }
    translate([-1.75*weightSize,0,0]) sphere(d=weightSize);
}
difference(){
    cylinder(h=depth, d=bearingSize + 2 * wallThickness, center=true);
    cylinder(h=depth + 2, d=bearingSize, center=true);
}

translate([-2.5, 16, 0]) intersection(){
    cylinder(h=depth, d=10, center=true);
    translate([5, 0, 0]) cylinder(h=depth, d=10, center=true);
}

rotate([0, 0, 20]) translate([-2.5, -16, 0]) intersection(){
    cylinder(h=depth, d=10, center=true);
    translate([7, 0, 0]) cylinder(h=depth, d=10, center=true);
}
rotate([0, 0, -20]) translate([-2.5, -16, 0]) intersection(){
    cylinder(h=depth, d=10, center=true);
    translate([7, 0, 0]) cylinder(h=depth, d=10, center=true);
}