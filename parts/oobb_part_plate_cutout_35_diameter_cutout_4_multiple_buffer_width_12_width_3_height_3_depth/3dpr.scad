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
		translate(v = [-37.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-37.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [37.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [37.5, 15.0, 0]) {
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
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-60.0, 0, 0.0]) {
			cylinder(h = 3, r = 17.5);
		}
		translate(v = [-20.0, 0, 0.0]) {
			cylinder(h = 3, r = 17.5);
		}
		translate(v = [20.0, 0, 0.0]) {
			cylinder(h = 3, r = 17.5);
		}
		translate(v = [60.0, 0, 0.0]) {
			cylinder(h = 3, r = 17.5);
		}
	}
}
