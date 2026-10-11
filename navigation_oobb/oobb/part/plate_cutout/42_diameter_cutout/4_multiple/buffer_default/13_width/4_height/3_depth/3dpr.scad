$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-92.0, 24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [92.0, 24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-92.0, -24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [92.0, -24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-90.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-90.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [90.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [90.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-90.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-90.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [90.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [90.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-70.5, 0, 0.0]) {
			cylinder(h = 3, r = 21.0);
		}
		translate(v = [-23.5, 0, 0.0]) {
			cylinder(h = 3, r = 21.0);
		}
		translate(v = [23.5, 0, 0.0]) {
			cylinder(h = 3, r = 21.0);
		}
		translate(v = [70.5, 0, 0.0]) {
			cylinder(h = 3, r = 21.0);
		}
	}
}
