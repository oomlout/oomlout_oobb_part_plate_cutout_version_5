$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-32.0, 2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [32.0, 2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-32.0, -2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [32.0, -2.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-26.0, 0, 0.0]) {
			cylinder(h = 9, r = 4.0);
		}
		translate(v = [-13.0, 0, 0.0]) {
			cylinder(h = 9, r = 4.0);
		}
		cylinder(h = 9, r = 4.0);
		translate(v = [13.0, 0, 0.0]) {
			cylinder(h = 9, r = 4.0);
		}
		translate(v = [26.0, 0, 0.0]) {
			cylinder(h = 9, r = 4.0);
		}
	}
}
