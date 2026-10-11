$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-242.0, 62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [242.0, 62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-242.0, -62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [242.0, -62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-240.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-240.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [240.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [240.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-240.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-240.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [240.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [240.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-180.0, 0, 0.0]) {
			cylinder(h = 9, r = 57.5);
		}
		translate(v = [-60.0, 0, 0.0]) {
			cylinder(h = 9, r = 57.5);
		}
		translate(v = [60.0, 0, 0.0]) {
			cylinder(h = 9, r = 57.5);
		}
		translate(v = [180.0, 0, 0.0]) {
			cylinder(h = 9, r = 57.5);
		}
	}
}
