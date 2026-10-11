$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-69.5, 24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [69.5, 24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-69.5, -24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [69.5, -24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-67.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-67.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [67.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [67.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-67.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-67.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [67.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [67.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-48.0, 0, 0.0]) {
			cylinder(h = 3, r = 21.5);
		}
		cylinder(h = 3, r = 21.5);
		translate(v = [48.0, 0, 0.0]) {
			cylinder(h = 3, r = 21.5);
		}
	}
}
