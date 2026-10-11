$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-84.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [84.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-84.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [84.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
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
		translate(v = [-66.0, 0, 0.0]) {
			cylinder(h = 3, r = 14.0);
		}
		translate(v = [-33.0, 0, 0.0]) {
			cylinder(h = 3, r = 14.0);
		}
		cylinder(h = 3, r = 14.0);
		translate(v = [33.0, 0, 0.0]) {
			cylinder(h = 3, r = 14.0);
		}
		translate(v = [66.0, 0, 0.0]) {
			cylinder(h = 3, r = 14.0);
		}
	}
}
