$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-39.5, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [39.5, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-39.5, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [39.5, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-37.5, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-37.5, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [37.5, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [37.5, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, -7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [0.0, 7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-27.0, 0, 0.0]) {
			cylinder(h = 9, r = 6.5);
		}
		translate(v = [-9.0, 0, 0.0]) {
			cylinder(h = 9, r = 6.5);
		}
		translate(v = [9.0, 0, 0.0]) {
			cylinder(h = 9, r = 6.5);
		}
		translate(v = [27.0, 0, 0.0]) {
			cylinder(h = 9, r = 6.5);
		}
	}
}
