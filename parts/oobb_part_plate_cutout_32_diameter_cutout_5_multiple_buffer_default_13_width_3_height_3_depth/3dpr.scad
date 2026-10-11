$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-92.0, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [92.0, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-92.0, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [92.0, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-90.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-90.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [90.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [90.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-90.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-90.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [90.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [90.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-74.0, 0, 0.0]) {
			cylinder(h = 3, r = 16.0);
		}
		translate(v = [-37.0, 0, 0.0]) {
			cylinder(h = 3, r = 16.0);
		}
		cylinder(h = 3, r = 16.0);
		translate(v = [37.0, 0, 0.0]) {
			cylinder(h = 3, r = 16.0);
		}
		translate(v = [74.0, 0, 0.0]) {
			cylinder(h = 3, r = 16.0);
		}
	}
}
