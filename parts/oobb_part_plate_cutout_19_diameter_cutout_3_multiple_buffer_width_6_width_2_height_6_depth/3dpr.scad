$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-39.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [39.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-39.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [39.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-37.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-37.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [37.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [37.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-24.0, 0, 0.0]) {
			cylinder(h = 6, r = 9.5);
		}
		cylinder(h = 6, r = 9.5);
		translate(v = [24.0, 0, 0.0]) {
			cylinder(h = 6, r = 9.5);
		}
	}
}
