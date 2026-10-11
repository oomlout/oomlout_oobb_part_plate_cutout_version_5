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
		translate(v = [-75.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-75.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [75.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [75.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [75.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-75.0, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-75.0, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-67.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-67.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
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
		translate(v = [67.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [67.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [75.0, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [75.0, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-58.0, 0, 0.0]) {
			cylinder(h = 3, r = 12.0);
		}
		translate(v = [-29.0, 0, 0.0]) {
			cylinder(h = 3, r = 12.0);
		}
		cylinder(h = 3, r = 12.0);
		translate(v = [29.0, 0, 0.0]) {
			cylinder(h = 3, r = 12.0);
		}
		translate(v = [58.0, 0, 0.0]) {
			cylinder(h = 3, r = 12.0);
		}
	}
}
