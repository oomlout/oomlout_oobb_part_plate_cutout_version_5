$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-62.0, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [62.0, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-62.0, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [62.0, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-60.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-60.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [60.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [60.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-60.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [60.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-44.0, 0, 0.0]) {
			cylinder(h = 9, r = 8.5);
		}
		translate(v = [-22.0, 0, 0.0]) {
			cylinder(h = 9, r = 8.5);
		}
		cylinder(h = 9, r = 8.5);
		translate(v = [22.0, 0, 0.0]) {
			cylinder(h = 9, r = 8.5);
		}
		translate(v = [44.0, 0, 0.0]) {
			cylinder(h = 9, r = 8.5);
		}
	}
}
