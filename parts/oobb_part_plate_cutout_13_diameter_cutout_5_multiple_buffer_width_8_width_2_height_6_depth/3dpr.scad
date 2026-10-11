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
		translate(v = [-52.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-52.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [52.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [52.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-52.5, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-45.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-45.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [45.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [45.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [52.5, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-36.0, 0, 0.0]) {
			cylinder(h = 6, r = 6.5);
		}
		translate(v = [-18.0, 0, 0.0]) {
			cylinder(h = 6, r = 6.5);
		}
		cylinder(h = 6, r = 6.5);
		translate(v = [18.0, 0, 0.0]) {
			cylinder(h = 6, r = 6.5);
		}
		translate(v = [36.0, 0, 0.0]) {
			cylinder(h = 6, r = 6.5);
		}
	}
}
