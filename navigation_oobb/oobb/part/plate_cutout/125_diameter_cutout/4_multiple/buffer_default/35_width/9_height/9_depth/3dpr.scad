$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-257.0, 62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [257.0, 62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-257.0, -62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [257.0, -62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-255.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-255.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [255.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [255.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-255.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-255.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [255.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [255.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-195.0, 0, 0.0]) {
			cylinder(h = 9, r = 62.5);
		}
		translate(v = [-65.0, 0, 0.0]) {
			cylinder(h = 9, r = 62.5);
		}
		translate(v = [65.0, 0, 0.0]) {
			cylinder(h = 9, r = 62.5);
		}
		translate(v = [195.0, 0, 0.0]) {
			cylinder(h = 9, r = 62.5);
		}
	}
}
