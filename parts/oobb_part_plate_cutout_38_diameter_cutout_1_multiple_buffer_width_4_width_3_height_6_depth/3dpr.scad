$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-24.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [24.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-24.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [24.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		cylinder(h = 6, r = 19.0);
	}
}
