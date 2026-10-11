$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-377.0, 77.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [377.0, 77.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-377.0, -77.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [377.0, -77.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-375.0, -75.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-375.0, 75.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [375.0, -75.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [375.0, 75.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-375.0, -75.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-375.0, 75.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [375.0, -75.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [375.0, 75.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-300.0, 0, 0.0]) {
			cylinder(h = 3, r = 72.5);
		}
		translate(v = [-150.0, 0, 0.0]) {
			cylinder(h = 3, r = 72.5);
		}
		cylinder(h = 3, r = 72.5);
		translate(v = [150.0, 0, 0.0]) {
			cylinder(h = 3, r = 72.5);
		}
		translate(v = [300.0, 0, 0.0]) {
			cylinder(h = 3, r = 72.5);
		}
	}
}
