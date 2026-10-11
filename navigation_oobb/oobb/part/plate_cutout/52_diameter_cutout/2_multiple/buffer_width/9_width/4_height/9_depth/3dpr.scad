$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-62.0, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [62.0, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-62.0, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [62.0, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-60.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-60.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-60.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-60.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [60.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [60.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [60.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [60.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-60.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-60.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-60.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-52.5, -22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-52.5, 22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [52.5, -22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [52.5, 22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [60.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [60.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [60.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-28.5, 0, 0.0]) {
			cylinder(h = 9, r = 26.0);
		}
		translate(v = [28.5, 0, 0.0]) {
			cylinder(h = 9, r = 26.0);
		}
	}
}
