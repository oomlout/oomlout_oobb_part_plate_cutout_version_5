$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-92.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [92.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-92.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [92.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-90.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-90.0, 0.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-90.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-45.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [45.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [90.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [90.0, 0.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [90.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-90.0, -7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-90.0, 7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [90.0, -7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [90.0, 7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-64.5, 0, 0.0]) {
			cylinder(h = 9, r = 19.0);
		}
		translate(v = [-21.5, 0, 0.0]) {
			cylinder(h = 9, r = 19.0);
		}
		translate(v = [21.5, 0, 0.0]) {
			cylinder(h = 9, r = 19.0);
		}
		translate(v = [64.5, 0, 0.0]) {
			cylinder(h = 9, r = 19.0);
		}
	}
}
