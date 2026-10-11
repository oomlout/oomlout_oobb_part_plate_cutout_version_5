$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-32.0, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [32.0, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-32.0, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [32.0, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-28.0, 0, 0.0]) {
			cylinder(h = 9, r = 4.5);
		}
		translate(v = [-14.0, 0, 0.0]) {
			cylinder(h = 9, r = 4.5);
		}
		cylinder(h = 9, r = 4.5);
		translate(v = [14.0, 0, 0.0]) {
			cylinder(h = 9, r = 4.5);
		}
		translate(v = [28.0, 0, 0.0]) {
			cylinder(h = 9, r = 4.5);
		}
	}
}
