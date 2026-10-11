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
		translate(v = [-90.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-90.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-90.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [90.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [90.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [90.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-90.0, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-90.0, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-82.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-82.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-52.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-52.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [52.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [52.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [90.0, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [90.0, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-66.0, 0, 0.0]) {
			cylinder(h = 3, r = 14.0);
		}
		translate(v = [-33.0, 0, 0.0]) {
			cylinder(h = 3, r = 14.0);
		}
		cylinder(h = 3, r = 14.0);
		translate(v = [33.0, 0, 0.0]) {
			cylinder(h = 3, r = 14.0);
		}
		translate(v = [66.0, 0, 0.0]) {
			cylinder(h = 3, r = 14.0);
		}
	}
}
