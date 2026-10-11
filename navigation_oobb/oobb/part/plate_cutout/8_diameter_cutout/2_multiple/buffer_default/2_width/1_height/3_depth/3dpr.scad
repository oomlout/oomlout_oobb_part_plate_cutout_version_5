$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-9.5, 2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [9.5, 2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-9.5, -2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [9.5, -2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-7.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [7.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-7.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-6.5, 0, 0.0]) {
			cylinder(h = 3, r = 4.0);
		}
		translate(v = [6.5, 0, 0.0]) {
			cylinder(h = 3, r = 4.0);
		}
	}
}
