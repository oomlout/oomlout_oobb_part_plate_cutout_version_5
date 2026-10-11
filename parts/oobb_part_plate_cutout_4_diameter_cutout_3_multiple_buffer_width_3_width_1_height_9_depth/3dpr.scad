$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-17.0, 2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [17.0, 2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-17.0, -2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [17.0, -2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-9.0, 0, 0.0]) {
			cylinder(h = 9, r = 2.0);
		}
		cylinder(h = 9, r = 2.0);
		translate(v = [9.0, 0, 0.0]) {
			cylinder(h = 9, r = 2.0);
		}
	}
}
