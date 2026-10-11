$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-182.0, 47.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [182.0, 47.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-182.0, -47.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [182.0, -47.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-180.0, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-180.0, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [180.0, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [180.0, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-180.0, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-180.0, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [180.0, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [180.0, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-135.0, 0, 0.0]) {
			cylinder(h = 6, r = 42.5);
		}
		translate(v = [-45.0, 0, 0.0]) {
			cylinder(h = 6, r = 42.5);
		}
		translate(v = [45.0, 0, 0.0]) {
			cylinder(h = 6, r = 42.5);
		}
		translate(v = [135.0, 0, 0.0]) {
			cylinder(h = 6, r = 42.5);
		}
	}
}
