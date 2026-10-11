$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-114.5, 54.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [114.5, 54.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-114.5, -54.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [114.5, -54.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-112.5, -52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-112.5, 52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [112.5, -52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [112.5, 52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-112.5, -52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-112.5, 52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [112.5, -52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [112.5, 52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-57.5, 0, 0.0]) {
			cylinder(h = 9, r = 55.0);
		}
		translate(v = [57.5, 0, 0.0]) {
			cylinder(h = 9, r = 55.0);
		}
	}
}
