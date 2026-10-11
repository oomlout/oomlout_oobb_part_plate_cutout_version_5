$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-9.5, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [9.5, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-9.5, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [9.5, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-7.5, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-7.5, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [7.5, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [7.5, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		cylinder(h = 9, r = 3.5);
	}
}
