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
		translate(v = [-6.5, 0, 0.0]) {
			cylinder(h = 3, r = 4.0);
		}
		translate(v = [6.5, 0, 0.0]) {
			cylinder(h = 3, r = 4.0);
		}
	}
}
