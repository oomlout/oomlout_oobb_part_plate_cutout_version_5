$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-32.0, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [32.0, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-32.0, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [32.0, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-30.0, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [30.0, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-11.0, 0, 0.0]) {
			cylinder(h = 3, r = 8.5);
		}
		translate(v = [11.0, 0, 0.0]) {
			cylinder(h = 3, r = 8.5);
		}
	}
}
