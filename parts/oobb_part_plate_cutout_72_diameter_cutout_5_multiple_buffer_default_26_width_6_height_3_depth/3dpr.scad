$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-189.5, 39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [189.5, 39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-189.5, -39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [189.5, -39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-187.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-187.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [187.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [187.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-187.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-187.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [187.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [187.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-154.0, 0, 0.0]) {
			cylinder(h = 3, r = 36.0);
		}
		translate(v = [-77.0, 0, 0.0]) {
			cylinder(h = 3, r = 36.0);
		}
		cylinder(h = 3, r = 36.0);
		translate(v = [77.0, 0, 0.0]) {
			cylinder(h = 3, r = 36.0);
		}
		translate(v = [154.0, 0, 0.0]) {
			cylinder(h = 3, r = 36.0);
		}
	}
}
