$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-122.0, 62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [122.0, 62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-122.0, -62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [122.0, -62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-120.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-120.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [120.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [120.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-120.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-120.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [120.0, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [120.0, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-62.5, 0, 0.0]) {
			cylinder(h = 3, r = 60.0);
		}
		translate(v = [62.5, 0, 0.0]) {
			cylinder(h = 3, r = 60.0);
		}
	}
}
