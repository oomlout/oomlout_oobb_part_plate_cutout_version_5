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
		translate(v = [-72.0, 0, 0.0]) {
			cylinder(h = 3, r = 15.5);
		}
		translate(v = [-36.0, 0, 0.0]) {
			cylinder(h = 3, r = 15.5);
		}
		cylinder(h = 3, r = 15.5);
		translate(v = [36.0, 0, 0.0]) {
			cylinder(h = 3, r = 15.5);
		}
		translate(v = [72.0, 0, 0.0]) {
			cylinder(h = 3, r = 15.5);
		}
	}
}
