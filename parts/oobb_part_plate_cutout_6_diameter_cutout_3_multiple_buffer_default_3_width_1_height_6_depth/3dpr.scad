$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-17.0, 2.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [17.0, 2.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-17.0, -2.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [17.0, -2.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-11.0, 0, 0.0]) {
			cylinder(h = 6, r = 3.0);
		}
		cylinder(h = 6, r = 3.0);
		translate(v = [11.0, 0, 0.0]) {
			cylinder(h = 6, r = 3.0);
		}
	}
}
