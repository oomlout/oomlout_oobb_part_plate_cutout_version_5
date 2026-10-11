$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-47.0, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [47.0, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-47.0, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [47.0, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-45.0, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-27.0, 0, 0.0]) {
			cylinder(h = 3, r = 11.0);
		}
		cylinder(h = 3, r = 11.0);
		translate(v = [27.0, 0, 0.0]) {
			cylinder(h = 3, r = 11.0);
		}
	}
}
