$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-84.5, 39.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [84.5, 39.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-84.5, -39.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [84.5, -39.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-82.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-82.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [82.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [82.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-82.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-82.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [82.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [82.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-41.5, 0, 0.0]) {
			cylinder(h = 9, r = 39.0);
		}
		translate(v = [41.5, 0, 0.0]) {
			cylinder(h = 9, r = 39.0);
		}
	}
}
