$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-77.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [77.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-77.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [77.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-75.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-75.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [75.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [75.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-75.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-75.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [75.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [75.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-57.0, 0, 0.0]) {
			cylinder(h = 9, r = 16.5);
		}
		translate(v = [-19.0, 0, 0.0]) {
			cylinder(h = 9, r = 16.5);
		}
		translate(v = [19.0, 0, 0.0]) {
			cylinder(h = 9, r = 16.5);
		}
		translate(v = [57.0, 0, 0.0]) {
			cylinder(h = 9, r = 16.5);
		}
	}
}
