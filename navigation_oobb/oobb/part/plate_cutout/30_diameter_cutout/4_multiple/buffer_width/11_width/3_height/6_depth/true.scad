$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-77.0, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [77.0, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-77.0, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [77.0, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-75.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.0);
		}
		translate(v = [-75.0, 0.0, 0]) {
			cylinder(h = 6, r = 3.0);
		}
		translate(v = [-75.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.0);
		}
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.0);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.0);
		}
		translate(v = [75.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.0);
		}
		translate(v = [75.0, 0.0, 0]) {
			cylinder(h = 6, r = 3.0);
		}
		translate(v = [75.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.0);
		}
		translate(v = [-75.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [-75.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [-67.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [-67.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [-37.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [-37.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [37.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [37.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [67.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [67.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [75.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [75.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.5);
		}
		translate(v = [-52.5, 0, 0.0]) {
			cylinder(h = 6, r = 15.0);
		}
		translate(v = [-17.5, 0, 0.0]) {
			cylinder(h = 6, r = 15.0);
		}
		translate(v = [17.5, 0, 0.0]) {
			cylinder(h = 6, r = 15.0);
		}
		translate(v = [52.5, 0, 0.0]) {
			cylinder(h = 6, r = 15.0);
		}
	}
}
