$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-84.5, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [84.5, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-84.5, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [84.5, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-82.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-82.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [82.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [82.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-82.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-82.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [82.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [82.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-57.0, 0, 0.0]) {
			cylinder(h = 9, r = 26.0);
		}
		cylinder(h = 9, r = 26.0);
		translate(v = [57.0, 0, 0.0]) {
			cylinder(h = 9, r = 26.0);
		}
	}
}
