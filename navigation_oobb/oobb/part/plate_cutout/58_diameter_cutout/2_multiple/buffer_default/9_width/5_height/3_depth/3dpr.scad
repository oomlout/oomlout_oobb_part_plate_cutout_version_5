$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-62.0, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [62.0, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-62.0, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [62.0, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-60.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-60.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [60.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [60.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-60.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-60.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [60.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [60.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-31.5, 0, 0.0]) {
			cylinder(h = 3, r = 29.0);
		}
		translate(v = [31.5, 0, 0.0]) {
			cylinder(h = 3, r = 29.0);
		}
	}
}
