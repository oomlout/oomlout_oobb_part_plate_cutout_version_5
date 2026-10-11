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
		translate(v = [-82.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-82.5, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-82.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-52.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-52.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [52.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [52.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [82.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [82.5, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [82.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-82.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-82.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-75.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-75.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [75.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [75.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-64.0, 0, 0.0]) {
			cylinder(h = 3, r = 13.5);
		}
		translate(v = [-32.0, 0, 0.0]) {
			cylinder(h = 3, r = 13.5);
		}
		cylinder(h = 3, r = 13.5);
		translate(v = [32.0, 0, 0.0]) {
			cylinder(h = 3, r = 13.5);
		}
		translate(v = [64.0, 0, 0.0]) {
			cylinder(h = 3, r = 13.5);
		}
	}
}
