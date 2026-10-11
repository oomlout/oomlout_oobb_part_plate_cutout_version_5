$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-99.5, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [99.5, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-99.5, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [99.5, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-97.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-97.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [97.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [97.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-97.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-97.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [97.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [97.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-82.0, 0, 0.0]) {
			cylinder(h = 9, r = 18.0);
		}
		translate(v = [-41.0, 0, 0.0]) {
			cylinder(h = 9, r = 18.0);
		}
		cylinder(h = 9, r = 18.0);
		translate(v = [41.0, 0, 0.0]) {
			cylinder(h = 9, r = 18.0);
		}
		translate(v = [82.0, 0, 0.0]) {
			cylinder(h = 9, r = 18.0);
		}
	}
}
