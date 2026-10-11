$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-24.5, 2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [24.5, 2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-24.5, -2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [24.5, -2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-22.5, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-12.0, 0, 0.0]) {
			cylinder(h = 3, r = 3.5);
		}
		cylinder(h = 3, r = 3.5);
		translate(v = [12.0, 0, 0.0]) {
			cylinder(h = 3, r = 3.5);
		}
	}
}
