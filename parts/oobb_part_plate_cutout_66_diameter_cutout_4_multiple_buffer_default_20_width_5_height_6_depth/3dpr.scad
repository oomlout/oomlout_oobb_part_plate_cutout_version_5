$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-144.5, 32.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [144.5, 32.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-144.5, -32.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [144.5, -32.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-142.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-142.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [142.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [142.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-142.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-142.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [142.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [142.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-106.5, 0, 0.0]) {
			cylinder(h = 6, r = 33.0);
		}
		translate(v = [-35.5, 0, 0.0]) {
			cylinder(h = 6, r = 33.0);
		}
		translate(v = [35.5, 0, 0.0]) {
			cylinder(h = 6, r = 33.0);
		}
		translate(v = [106.5, 0, 0.0]) {
			cylinder(h = 6, r = 33.0);
		}
	}
}
