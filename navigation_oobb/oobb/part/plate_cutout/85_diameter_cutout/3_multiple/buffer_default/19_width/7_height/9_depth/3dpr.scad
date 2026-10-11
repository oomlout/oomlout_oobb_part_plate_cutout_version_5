$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-137.0, 47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [137.0, 47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-137.0, -47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [137.0, -47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-135.0, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-135.0, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [135.0, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [135.0, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-135.0, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-135.0, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [135.0, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [135.0, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-90.0, 0, 0.0]) {
			cylinder(h = 9, r = 42.5);
		}
		cylinder(h = 9, r = 42.5);
		translate(v = [90.0, 0, 0.0]) {
			cylinder(h = 9, r = 42.5);
		}
	}
}
