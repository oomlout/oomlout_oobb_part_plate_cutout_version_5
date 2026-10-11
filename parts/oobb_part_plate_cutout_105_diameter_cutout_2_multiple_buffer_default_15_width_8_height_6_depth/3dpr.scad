$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-107.0, 54.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [107.0, 54.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-107.0, -54.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [107.0, -54.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-105.0, -52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-105.0, 52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [105.0, -52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [105.0, 52.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-105.0, -52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-105.0, 52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [105.0, -52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [105.0, 52.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-55.0, 0, 0.0]) {
			cylinder(h = 6, r = 52.5);
		}
		translate(v = [55.0, 0, 0.0]) {
			cylinder(h = 6, r = 52.5);
		}
	}
}
