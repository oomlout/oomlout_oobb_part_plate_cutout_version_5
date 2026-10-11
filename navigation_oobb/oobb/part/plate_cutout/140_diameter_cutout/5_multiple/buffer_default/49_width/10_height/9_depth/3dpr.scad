$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-362.0, 69.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [362.0, 69.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-362.0, -69.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [362.0, -69.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-360.0, -67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-360.0, 67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [360.0, -67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [360.0, 67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-360.0, -67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-360.0, 67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [360.0, -67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [360.0, 67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-290.0, 0, 0.0]) {
			cylinder(h = 9, r = 70.0);
		}
		translate(v = [-145.0, 0, 0.0]) {
			cylinder(h = 9, r = 70.0);
		}
		cylinder(h = 9, r = 70.0);
		translate(v = [145.0, 0, 0.0]) {
			cylinder(h = 9, r = 70.0);
		}
		translate(v = [290.0, 0, 0.0]) {
			cylinder(h = 9, r = 70.0);
		}
	}
}
