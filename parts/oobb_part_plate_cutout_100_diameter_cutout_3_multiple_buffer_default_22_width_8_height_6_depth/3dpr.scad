$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-159.5, 54.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [159.5, 54.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-159.5, -54.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [159.5, -54.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-157.5, -52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-157.5, 52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [157.5, -52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [157.5, 52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-157.5, -52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-157.5, 52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [157.5, -52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [157.5, 52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-105.0, 0, 0.0]) {
			cylinder(h = 6, r = 50.0);
		}
		cylinder(h = 6, r = 50.0);
		translate(v = [105.0, 0, 0.0]) {
			cylinder(h = 6, r = 50.0);
		}
	}
}
