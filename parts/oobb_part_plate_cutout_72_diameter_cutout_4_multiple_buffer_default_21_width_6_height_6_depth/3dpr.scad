$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-152.0, 39.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [152.0, 39.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-152.0, -39.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [152.0, -39.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-150.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-150.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [150.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [150.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-150.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-150.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [150.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [150.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-115.5, 0, 0.0]) {
			cylinder(h = 6, r = 36.0);
		}
		translate(v = [-38.5, 0, 0.0]) {
			cylinder(h = 6, r = 36.0);
		}
		translate(v = [38.5, 0, 0.0]) {
			cylinder(h = 6, r = 36.0);
		}
		translate(v = [115.5, 0, 0.0]) {
			cylinder(h = 6, r = 36.0);
		}
	}
}
