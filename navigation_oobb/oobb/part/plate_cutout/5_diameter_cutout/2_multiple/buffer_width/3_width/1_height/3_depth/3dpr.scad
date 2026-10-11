$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-17.0, 2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [17.0, 2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-17.0, -2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [17.0, -2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-15.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [15.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-5.0, 0, 0.0]) {
			cylinder(h = 3, r = 2.5);
		}
		translate(v = [5.0, 0, 0.0]) {
			cylinder(h = 3, r = 2.5);
		}
	}
}
