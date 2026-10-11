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
		translate(v = [0.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [0.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-19.5, 0, 0.0]) {
			cylinder(h = 6, r = 4.0);
		}
		translate(v = [-6.5, 0, 0.0]) {
			cylinder(h = 6, r = 4.0);
		}
		translate(v = [6.5, 0, 0.0]) {
			cylinder(h = 6, r = 4.0);
		}
		translate(v = [19.5, 0, 0.0]) {
			cylinder(h = 6, r = 4.0);
		}
	}
}
