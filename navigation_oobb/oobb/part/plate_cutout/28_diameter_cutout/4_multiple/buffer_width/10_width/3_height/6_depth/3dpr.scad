$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-69.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [69.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-69.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [69.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-67.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-67.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-37.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-37.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [37.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [37.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [67.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [67.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-67.5, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-67.5, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-30.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-30.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [30.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [30.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [67.5, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [67.5, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-49.5, 0, 0.0]) {
			cylinder(h = 6, r = 14.0);
		}
		translate(v = [-16.5, 0, 0.0]) {
			cylinder(h = 6, r = 14.0);
		}
		translate(v = [16.5, 0, 0.0]) {
			cylinder(h = 6, r = 14.0);
		}
		translate(v = [49.5, 0, 0.0]) {
			cylinder(h = 6, r = 14.0);
		}
	}
}
