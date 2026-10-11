$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-77.0, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [77.0, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-77.0, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [77.0, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-75.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-75.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [75.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [75.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-75.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [75.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-56.0, 0, 0.0]) {
			cylinder(h = 9, r = 11.5);
		}
		translate(v = [-28.0, 0, 0.0]) {
			cylinder(h = 9, r = 11.5);
		}
		cylinder(h = 9, r = 11.5);
		translate(v = [28.0, 0, 0.0]) {
			cylinder(h = 9, r = 11.5);
		}
		translate(v = [56.0, 0, 0.0]) {
			cylinder(h = 9, r = 11.5);
		}
	}
}
