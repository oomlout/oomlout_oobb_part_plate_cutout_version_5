$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-107.0, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [107.0, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-107.0, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [107.0, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-105.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-105.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [105.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [105.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-105.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-105.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [105.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [105.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-82.5, 0, 0.0]) {
			cylinder(h = 9, r = 25.0);
		}
		translate(v = [-27.5, 0, 0.0]) {
			cylinder(h = 9, r = 25.0);
		}
		translate(v = [27.5, 0, 0.0]) {
			cylinder(h = 9, r = 25.0);
		}
		translate(v = [82.5, 0, 0.0]) {
			cylinder(h = 9, r = 25.0);
		}
	}
}
