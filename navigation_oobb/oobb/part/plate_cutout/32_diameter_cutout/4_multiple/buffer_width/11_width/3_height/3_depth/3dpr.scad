$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-77.0, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [77.0, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-77.0, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [77.0, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-75.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-75.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [75.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [75.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-37.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-55.5, 0, 0.0]) {
			cylinder(h = 3, r = 16.0);
		}
		translate(v = [-18.5, 0, 0.0]) {
			cylinder(h = 3, r = 16.0);
		}
		translate(v = [18.5, 0, 0.0]) {
			cylinder(h = 3, r = 16.0);
		}
		translate(v = [55.5, 0, 0.0]) {
			cylinder(h = 3, r = 16.0);
		}
	}
}
