$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-17.0, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [17.0, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-17.0, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [17.0, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-15.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-15.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [15.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [15.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		cylinder(h = 9, r = 19.0);
	}
}
