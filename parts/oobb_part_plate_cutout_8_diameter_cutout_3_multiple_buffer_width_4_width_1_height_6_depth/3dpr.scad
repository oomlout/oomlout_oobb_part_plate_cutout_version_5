$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-24.5, 2.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [24.5, 2.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-24.5, -2.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [24.5, -2.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-22.5, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [22.5, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-13.0, 0, 0.0]) {
			cylinder(h = 6, r = 4.0);
		}
		cylinder(h = 6, r = 4.0);
		translate(v = [13.0, 0, 0.0]) {
			cylinder(h = 6, r = 4.0);
		}
	}
}
