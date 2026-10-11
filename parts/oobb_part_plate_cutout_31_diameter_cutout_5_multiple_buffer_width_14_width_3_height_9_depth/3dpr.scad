$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-99.5, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [99.5, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-99.5, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [99.5, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-97.5, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-97.5, 0.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-97.5, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-52.5, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-52.5, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [52.5, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [52.5, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [97.5, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [97.5, 0.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [97.5, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-97.5, -7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-97.5, 7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-90.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-90.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [90.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [90.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [97.5, -7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [97.5, 7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-72.0, 0, 0.0]) {
			cylinder(h = 9, r = 15.5);
		}
		translate(v = [-36.0, 0, 0.0]) {
			cylinder(h = 9, r = 15.5);
		}
		cylinder(h = 9, r = 15.5);
		translate(v = [36.0, 0, 0.0]) {
			cylinder(h = 9, r = 15.5);
		}
		translate(v = [72.0, 0, 0.0]) {
			cylinder(h = 9, r = 15.5);
		}
	}
}
