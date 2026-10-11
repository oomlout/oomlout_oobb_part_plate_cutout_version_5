$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-2.0, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [2.0, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-2.0, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [2.0, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		cylinder(h = 6, r = 3.0);
	}
}
