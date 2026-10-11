$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-69.5, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [69.5, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-69.5, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [69.5, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-67.5, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-67.5, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [67.5, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [67.5, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-67.5, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [67.5, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-48.0, 0, 0.0]) {
			cylinder(h = 9, r = 9.5);
		}
		translate(v = [-24.0, 0, 0.0]) {
			cylinder(h = 9, r = 9.5);
		}
		cylinder(h = 9, r = 9.5);
		translate(v = [24.0, 0, 0.0]) {
			cylinder(h = 9, r = 9.5);
		}
		translate(v = [48.0, 0, 0.0]) {
			cylinder(h = 9, r = 9.5);
		}
	}
}
