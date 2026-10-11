$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-54.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [54.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-54.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [54.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-52.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-52.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [52.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [52.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-52.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-52.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [52.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [52.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-38.0, 0, 0.0]) {
			cylinder(h = 6, r = 16.5);
		}
		cylinder(h = 6, r = 16.5);
		translate(v = [38.0, 0, 0.0]) {
			cylinder(h = 6, r = 16.5);
		}
	}
}
