$fn = 50;

difference() {
	union() {
		cylinder(h = 3, r = 7.0);
	}
	union() {
		translate(v = [0.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		cylinder(h = 3, r = 2.0);
	}
}
