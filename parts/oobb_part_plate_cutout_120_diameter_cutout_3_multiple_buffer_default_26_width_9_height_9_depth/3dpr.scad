$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-189.5, 62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [189.5, 62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-189.5, -62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [189.5, -62.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-187.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-187.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [187.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [187.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-187.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-187.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [187.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [187.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-125.0, 0, 0.0]) {
			cylinder(h = 9, r = 60.0);
		}
		cylinder(h = 9, r = 60.0);
		translate(v = [125.0, 0, 0.0]) {
			cylinder(h = 9, r = 60.0);
		}
	}
}
