$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-17.0, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [17.0, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-17.0, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [17.0, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-15.0, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-15.0, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [0.0, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [0.0, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [15.0, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [15.0, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-7.5, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-7.5, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [7.5, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [7.5, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-10.0, 0, 0.0]) {
			cylinder(h = 6, r = 2.5);
		}
		cylinder(h = 6, r = 2.5);
		translate(v = [10.0, 0, 0.0]) {
			cylinder(h = 6, r = 2.5);
		}
	}
}
