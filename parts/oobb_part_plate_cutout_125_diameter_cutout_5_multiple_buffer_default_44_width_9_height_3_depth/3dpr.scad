$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-324.5, 62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [324.5, 62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-324.5, -62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [324.5, -62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-322.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-322.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [322.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [322.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-322.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-322.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [322.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [322.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-260.0, 0, 0.0]) {
			cylinder(h = 3, r = 62.5);
		}
		translate(v = [-130.0, 0, 0.0]) {
			cylinder(h = 3, r = 62.5);
		}
		cylinder(h = 3, r = 62.5);
		translate(v = [130.0, 0, 0.0]) {
			cylinder(h = 3, r = 62.5);
		}
		translate(v = [260.0, 0, 0.0]) {
			cylinder(h = 3, r = 62.5);
		}
	}
}
