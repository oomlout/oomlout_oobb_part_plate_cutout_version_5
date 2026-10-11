$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-182.0, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [182.0, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-182.0, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [182.0, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-180.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-180.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [180.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [180.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-180.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-180.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [180.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [180.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-146.0, 0, 0.0]) {
			cylinder(h = 3, r = 34.0);
		}
		translate(v = [-73.0, 0, 0.0]) {
			cylinder(h = 3, r = 34.0);
		}
		cylinder(h = 3, r = 34.0);
		translate(v = [73.0, 0, 0.0]) {
			cylinder(h = 3, r = 34.0);
		}
		translate(v = [146.0, 0, 0.0]) {
			cylinder(h = 3, r = 34.0);
		}
	}
}
