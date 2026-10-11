$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-99.5, 32.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [99.5, 32.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-99.5, -32.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [99.5, -32.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-97.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-97.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [97.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [97.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-97.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-97.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [97.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [97.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-67.0, 0, 0.0]) {
			cylinder(h = 9, r = 31.0);
		}
		cylinder(h = 9, r = 31.0);
		translate(v = [67.0, 0, 0.0]) {
			cylinder(h = 9, r = 31.0);
		}
	}
}
