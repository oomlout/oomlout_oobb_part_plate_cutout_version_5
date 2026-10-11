$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-77.0, 24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [77.0, 24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-77.0, -24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [77.0, -24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-75.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-75.0, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-75.0, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-75.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-60.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-60.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-30.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-30.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-15.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-15.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [15.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [15.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [30.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [30.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [60.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [60.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [75.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [75.0, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [75.0, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [75.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-75.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-75.0, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-75.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-67.5, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-67.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-67.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-67.5, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [67.5, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [67.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [67.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [67.5, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [75.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [75.0, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [75.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-46.0, 0, 0.0]) {
			cylinder(h = 6, r = 20.5);
		}
		cylinder(h = 6, r = 20.5);
		translate(v = [46.0, 0, 0.0]) {
			cylinder(h = 6, r = 20.5);
		}
	}
}
