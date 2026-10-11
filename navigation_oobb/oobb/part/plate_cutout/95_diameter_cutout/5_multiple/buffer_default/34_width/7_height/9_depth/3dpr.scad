$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-249.5, 47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [249.5, 47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-249.5, -47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [249.5, -47.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-247.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-247.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [247.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [247.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-247.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-247.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [247.5, -45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [247.5, 45.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-200.0, 0, 0.0]) {
			cylinder(h = 9, r = 47.5);
		}
		translate(v = [-100.0, 0, 0.0]) {
			cylinder(h = 9, r = 47.5);
		}
		cylinder(h = 9, r = 47.5);
		translate(v = [100.0, 0, 0.0]) {
			cylinder(h = 9, r = 47.5);
		}
		translate(v = [200.0, 0, 0.0]) {
			cylinder(h = 9, r = 47.5);
		}
	}
}
