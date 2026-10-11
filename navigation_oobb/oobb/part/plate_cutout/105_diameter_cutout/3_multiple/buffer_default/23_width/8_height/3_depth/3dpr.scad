$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-167.0, 54.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [167.0, 54.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-167.0, -54.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [167.0, -54.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-165.0, -52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-165.0, 52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [165.0, -52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [165.0, 52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-165.0, -52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-165.0, 52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [165.0, -52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [165.0, 52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-110.0, 0, 0.0]) {
			cylinder(h = 3, r = 52.5);
		}
		cylinder(h = 3, r = 52.5);
		translate(v = [110.0, 0, 0.0]) {
			cylinder(h = 3, r = 52.5);
		}
	}
}
