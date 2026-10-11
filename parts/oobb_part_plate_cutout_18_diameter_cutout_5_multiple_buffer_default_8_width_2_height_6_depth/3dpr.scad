$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-54.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [54.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-54.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [54.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-52.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-52.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [52.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [52.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-52.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-52.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [52.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [52.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-46.0, 0, 0.0]) {
			cylinder(h = 6, r = 9.0);
		}
		translate(v = [-23.0, 0, 0.0]) {
			cylinder(h = 6, r = 9.0);
		}
		cylinder(h = 6, r = 9.0);
		translate(v = [23.0, 0, 0.0]) {
			cylinder(h = 6, r = 9.0);
		}
		translate(v = [46.0, 0, 0.0]) {
			cylinder(h = 6, r = 9.0);
		}
	}
}
