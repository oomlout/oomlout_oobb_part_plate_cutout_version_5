$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-122.0, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [122.0, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-122.0, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [122.0, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-120.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-120.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [120.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [120.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-120.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-120.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [120.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [120.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-91.5, 0, 0.0]) {
			cylinder(h = 3, r = 28.0);
		}
		translate(v = [-30.5, 0, 0.0]) {
			cylinder(h = 3, r = 28.0);
		}
		translate(v = [30.5, 0, 0.0]) {
			cylinder(h = 3, r = 28.0);
		}
		translate(v = [91.5, 0, 0.0]) {
			cylinder(h = 3, r = 28.0);
		}
	}
}
