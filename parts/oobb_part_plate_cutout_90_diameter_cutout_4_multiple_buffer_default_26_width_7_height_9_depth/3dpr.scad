$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-189.5, 47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [189.5, 47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-189.5, -47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [189.5, -47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-187.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-187.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [187.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [187.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-187.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-187.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [187.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [187.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-142.5, 0, 0.0]) {
			cylinder(h = 9, r = 45.0);
		}
		translate(v = [-47.5, 0, 0.0]) {
			cylinder(h = 9, r = 45.0);
		}
		translate(v = [47.5, 0, 0.0]) {
			cylinder(h = 9, r = 45.0);
		}
		translate(v = [142.5, 0, 0.0]) {
			cylinder(h = 9, r = 45.0);
		}
	}
}
