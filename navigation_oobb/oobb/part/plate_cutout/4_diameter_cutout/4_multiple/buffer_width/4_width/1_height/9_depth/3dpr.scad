$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-24.5, 2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [24.5, 2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-24.5, -2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [24.5, -2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-22.5, 0.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [22.5, 0.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-13.5, 0, 0.0]) {
			cylinder(h = 9, r = 2.0);
		}
		translate(v = [-4.5, 0, 0.0]) {
			cylinder(h = 9, r = 2.0);
		}
		translate(v = [4.5, 0, 0.0]) {
			cylinder(h = 9, r = 2.0);
		}
		translate(v = [13.5, 0, 0.0]) {
			cylinder(h = 9, r = 2.0);
		}
	}
}
