$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-279.5, 69.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [279.5, 69.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-279.5, -69.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [279.5, -69.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-277.5, -67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-277.5, 67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [277.5, -67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [277.5, 67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-277.5, -67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-277.5, 67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [277.5, -67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [277.5, 67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-210.0, 0, 0.0]) {
			cylinder(h = 6, r = 67.5);
		}
		translate(v = [-70.0, 0, 0.0]) {
			cylinder(h = 6, r = 67.5);
		}
		translate(v = [70.0, 0, 0.0]) {
			cylinder(h = 6, r = 67.5);
		}
		translate(v = [210.0, 0, 0.0]) {
			cylinder(h = 6, r = 67.5);
		}
	}
}
