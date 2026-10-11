$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-144.5, 47.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [144.5, 47.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-144.5, -47.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [144.5, -47.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-142.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-142.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [142.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [142.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-142.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-142.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [142.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [142.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-95.0, 0, 0.0]) {
			cylinder(h = 6, r = 45.0);
		}
		cylinder(h = 6, r = 45.0);
		translate(v = [95.0, 0, 0.0]) {
			cylinder(h = 6, r = 45.0);
		}
	}
}
