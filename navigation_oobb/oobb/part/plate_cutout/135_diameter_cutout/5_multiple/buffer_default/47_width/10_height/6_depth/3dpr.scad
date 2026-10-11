$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-347.0, 69.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [347.0, 69.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-347.0, -69.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [347.0, -69.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-345.0, -67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-345.0, 67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [345.0, -67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [345.0, 67.5, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-345.0, -67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-345.0, 67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [345.0, -67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [345.0, 67.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-280.0, 0, 0.0]) {
			cylinder(h = 6, r = 67.5);
		}
		translate(v = [-140.0, 0, 0.0]) {
			cylinder(h = 6, r = 67.5);
		}
		cylinder(h = 6, r = 67.5);
		translate(v = [140.0, 0, 0.0]) {
			cylinder(h = 6, r = 67.5);
		}
		translate(v = [280.0, 0, 0.0]) {
			cylinder(h = 6, r = 67.5);
		}
	}
}
