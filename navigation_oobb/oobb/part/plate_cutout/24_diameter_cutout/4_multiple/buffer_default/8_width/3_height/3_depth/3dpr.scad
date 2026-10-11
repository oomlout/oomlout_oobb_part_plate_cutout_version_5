$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-54.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [54.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-54.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [54.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
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
		translate(v = [-43.5, 0, 0.0]) {
			cylinder(h = 3, r = 12.0);
		}
		translate(v = [-14.5, 0, 0.0]) {
			cylinder(h = 3, r = 12.0);
		}
		translate(v = [14.5, 0, 0.0]) {
			cylinder(h = 3, r = 12.0);
		}
		translate(v = [43.5, 0, 0.0]) {
			cylinder(h = 3, r = 12.0);
		}
	}
}
