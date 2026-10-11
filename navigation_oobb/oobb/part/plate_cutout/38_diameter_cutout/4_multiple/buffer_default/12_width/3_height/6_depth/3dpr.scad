$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-84.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [84.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-84.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [84.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-82.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-82.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [82.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [82.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-82.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-82.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [82.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [82.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-64.5, 0, 0.0]) {
			cylinder(h = 6, r = 19.0);
		}
		translate(v = [-21.5, 0, 0.0]) {
			cylinder(h = 6, r = 19.0);
		}
		translate(v = [21.5, 0, 0.0]) {
			cylinder(h = 6, r = 19.0);
		}
		translate(v = [64.5, 0, 0.0]) {
			cylinder(h = 6, r = 19.0);
		}
	}
}
