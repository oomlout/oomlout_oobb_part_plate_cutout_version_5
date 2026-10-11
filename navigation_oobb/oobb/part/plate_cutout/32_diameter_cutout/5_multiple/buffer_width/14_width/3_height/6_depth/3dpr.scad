$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-99.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [99.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-99.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [99.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-97.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-97.5, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-97.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-52.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-52.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [52.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [52.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [97.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [97.5, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [97.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-97.5, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-97.5, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-90.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-90.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [90.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [90.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [97.5, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [97.5, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-74.0, 0, 0.0]) {
			cylinder(h = 6, r = 16.0);
		}
		translate(v = [-37.0, 0, 0.0]) {
			cylinder(h = 6, r = 16.0);
		}
		cylinder(h = 6, r = 16.0);
		translate(v = [37.0, 0, 0.0]) {
			cylinder(h = 6, r = 16.0);
		}
		translate(v = [74.0, 0, 0.0]) {
			cylinder(h = 6, r = 16.0);
		}
	}
}
