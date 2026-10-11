$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-2.0, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [2.0, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-2.0, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [2.0, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		cylinder(h = 3, r = 4.0);
	}
}
