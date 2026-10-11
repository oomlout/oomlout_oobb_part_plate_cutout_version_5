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
		translate(v = [-30.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [30.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-19.5, 0, 0.0]) {
			cylinder(h = 9, r = 4.0);
		}
		translate(v = [-6.5, 0, 0.0]) {
			cylinder(h = 9, r = 4.0);
		}
		translate(v = [6.5, 0, 0.0]) {
			cylinder(h = 9, r = 4.0);
		}
		translate(v = [19.5, 0, 0.0]) {
			cylinder(h = 9, r = 4.0);
		}
	}
}
