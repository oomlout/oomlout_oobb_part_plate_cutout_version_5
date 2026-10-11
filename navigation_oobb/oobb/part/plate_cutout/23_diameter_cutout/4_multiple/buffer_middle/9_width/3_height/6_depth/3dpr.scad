$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-62.0, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [62.0, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-62.0, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [62.0, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-60.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-60.0, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-60.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-30.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-30.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [30.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [30.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [60.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [60.0, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [60.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-60.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-60.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-52.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-52.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [52.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [52.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [60.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [60.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-42.0, 0, 0.0]) {
			cylinder(h = 6, r = 11.5);
		}
		translate(v = [-14.0, 0, 0.0]) {
			cylinder(h = 6, r = 11.5);
		}
		translate(v = [14.0, 0, 0.0]) {
			cylinder(h = 6, r = 11.5);
		}
		translate(v = [42.0, 0, 0.0]) {
			cylinder(h = 6, r = 11.5);
		}
	}
}
