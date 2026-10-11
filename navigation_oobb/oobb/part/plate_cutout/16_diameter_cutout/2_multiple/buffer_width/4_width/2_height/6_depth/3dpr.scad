$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-24.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [24.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-24.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [24.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-22.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-22.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [22.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [22.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-10.5, 0, 0.0]) {
			cylinder(h = 6, r = 8.0);
		}
		translate(v = [10.5, 0, 0.0]) {
			cylinder(h = 6, r = 8.0);
		}
	}
}
