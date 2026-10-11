$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-197.0, 39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [197.0, 39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-197.0, -39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [197.0, -39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-195.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-195.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [195.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [195.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-195.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-195.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [195.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [195.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-158.0, 0, 0.0]) {
			cylinder(h = 3, r = 37.0);
		}
		translate(v = [-79.0, 0, 0.0]) {
			cylinder(h = 3, r = 37.0);
		}
		cylinder(h = 3, r = 37.0);
		translate(v = [79.0, 0, 0.0]) {
			cylinder(h = 3, r = 37.0);
		}
		translate(v = [158.0, 0, 0.0]) {
			cylinder(h = 3, r = 37.0);
		}
	}
}
