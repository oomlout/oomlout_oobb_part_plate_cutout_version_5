$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-24.5, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [24.5, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-24.5, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [24.5, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-22.5, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-22.5, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [0.0, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [0.0, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-16.5, 0, 0.0]) {
			cylinder(h = 3, r = 3.0);
		}
		translate(v = [-5.5, 0, 0.0]) {
			cylinder(h = 3, r = 3.0);
		}
		translate(v = [5.5, 0, 0.0]) {
			cylinder(h = 3, r = 3.0);
		}
		translate(v = [16.5, 0, 0.0]) {
			cylinder(h = 3, r = 3.0);
		}
	}
}
