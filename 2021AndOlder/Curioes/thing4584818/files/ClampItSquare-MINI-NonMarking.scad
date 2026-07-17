// TheRedCoat 2020-08
// 
// Original by J-Max from https://www.thingiverse.com/thing:1306832
//
// Addresses issue raised by timjamesbrennan in 2017-12 and confirmed by melwell2002
// that the Mini has a serious geometry error where the inside corner support 
// gets in the way of the workpiece making it kinda useless for square clamping. Doesn't
// work too well as a boomerang either.
//
// Addresses issue raised by psykmunky that the embossed lettering interferes with the
// function of the flat exterior clamping surface, potentially marking the workpiece.
//
// The markings also slows the print down, could introduce stresses along the clamping 
// surface that ends up bending the clamp as it cools, and provides a place for debris 
// to collect in - affecting the clamping surface smoothness. None of these are desirable.
//
// No commercial clamps I'm aware of have deep-cut maker markings on the clamping surface. Likely
// for many of the same reasons I've outlined above. Even relatively harmless silk-screened 
// markings on aluminum clamps are avoided. I have seen a single injection molding design 
// with silk screened maker name (Milescraft) because it was the only flat surface 
// available to use, and silkscreen presents none of the issues outlined above.
//
// J-Max adamantly denies that this is a design flaw with the original and thus far refuses
// to address it. Whilst J-Max acknowledges that consumer printers aren't always calibrated
// perfectly, that's a real-life issue that is completely ignored in the original design 
// (I expect that overhangs and bridges would be treated with equal distain). IMO, this simply
// means that these models haven't in fact been designed for consumer STL printing, and are
// perhaps more appropriate for CAM or injection molding. 
//
// This version essentially eliminates the functionally pointless markings, 
// simplifying the model, and thus opening it up to tens of thousands of real-world 
// printers that may not be perfectly calibrated. It is, after all, a decent and useful 
// corner clamp.


$fn = 40;

module textlessclamp() {
    difference()
    {
        union() {
            rotate([0,0,180])     
            import("C:/!Projects/3D Printing/Tools-ClampItSquare/files/J-Max_ClampItSquare_Mini.STL");
            translate([-79.384, -76.5, 0]) color("red") cube([2,55.7,28]);
            translate([-58.5, -2, 0]) color("green") cube([55.5,2,28]);
        }
        
        translate([-50,-29.5,-1])
        cylinder(r=2.7, h=30, center=false);
    }
}

module debug_pink_block() {
    translate([-1.3, -78.1, 0]) rotate([0,0,90]) color("pink") cube([50,50,28]);
}

textlessclamp();
//debug_pink_block();