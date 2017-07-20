    bearingSize = 22;
    weightSize = 14.15;
    wallThickness = 5;
    depth = 5;
    
    $fn = 60;
    
    difference(){
    union(){
    difference(){
        cylinder(d=bearingSize+3*wallThickness, h=depth, center=true);
        cylinder(d=bearingSize, h=depth + 2, center=true);
        
        
    }
    
    rotate([0, 0, 120]) translate([26, 0, 0]) difference(){
        cylinder(d=weightSize+2*wallThickness, h=depth, center=true);
        cylinder(d=weightSize, h=depth + 2, center=true);
    }
    rotate([0, 0, 240]) translate([26, 0, 0]) difference(){
        cylinder(d=weightSize+2*wallThickness, h=depth, center=true);
        cylinder(d=weightSize, h=depth + 2, center=true);
    }
    
    rotate([0, 0, 0]) translate([26, 0, 0]) difference(){
        cylinder(d=weightSize+2*wallThickness, h=depth, center=true);
        cylinder(d=weightSize, h=depth + 2, center=true);
    }
    
    
    rotate([0, 0, 60]) translate([16, 0, 0]){
        difference(){
            cube(size = [8, 30, 5], center = true);
            translate([15.5, 0, 0]) cylinder(d=34, h=depth + 2, center=true);
        }
    }
    
    rotate([0, 0, -60]) translate([16, 0, 0]){
        difference(){
            cube(size = [8, 30, 5], center = true);
            translate([15.5, 0, 0]) cylinder(d=34, h=depth + 2, center=true);
        }
    }
    
    rotate([0, 0, 180]) translate([16, 0, 0]){
        difference(){
            cube(size = [8, 30, 5], center = true);
            translate([15.5, 0, 0]) cylinder(d=34, h=depth + 2, center=true);
        }
    }
    }
        for(i = [1:3]){
            rotate([0, 0, i * 120 + 22]) translate([15, 0, 0]) cylinder(10,3.5,4,$fn=3, center=true);
            rotate([0, 0, i * 120 - 22]) translate([15, 0, 0]) cylinder(10,3.5,4,$fn=3, center=true);
        }
}