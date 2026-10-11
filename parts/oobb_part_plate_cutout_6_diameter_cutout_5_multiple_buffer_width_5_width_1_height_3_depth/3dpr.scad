$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-32.0, 2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [32.0, 2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-32.0, -2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [32.0, -2.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-30.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-22.0, 0, 0.0]) {
			cylinder(h = 3, r = 3.0);
		}
		translate(v = [-11.0, 0, 0.0]) {
			cylinder(h = 3, r = 3.0);
		}
		cylinder(h = 3, r = 3.0);
		translate(v = [11.0, 0, 0.0]) {
			cylinder(h = 3, r = 3.0);
		}
		translate(v = [22.0, 0, 0.0]) {
			cylinder(h = 3, r = 3.0);
		}
	}
}
