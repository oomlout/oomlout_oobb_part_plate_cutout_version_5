$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-39.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [39.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-39.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [39.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-32.0, 0, 0.0]) {
			cylinder(h = 6, r = 5.5);
		}
		translate(v = [-16.0, 0, 0.0]) {
			cylinder(h = 6, r = 5.5);
		}
		cylinder(h = 6, r = 5.5);
		translate(v = [16.0, 0, 0.0]) {
			cylinder(h = 6, r = 5.5);
		}
		translate(v = [32.0, 0, 0.0]) {
			cylinder(h = 6, r = 5.5);
		}
	}
}
