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
		translate(v = [30.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-19.0, 0, 0.0]) {
			cylinder(h = 9, r = 7.0);
		}
		cylinder(h = 9, r = 7.0);
		translate(v = [19.0, 0, 0.0]) {
			cylinder(h = 9, r = 7.0);
		}
	}
}
