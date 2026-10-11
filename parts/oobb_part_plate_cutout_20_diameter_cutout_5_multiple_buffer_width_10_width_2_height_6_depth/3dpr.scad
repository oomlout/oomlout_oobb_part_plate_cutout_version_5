$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-69.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [69.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-69.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [69.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-67.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-67.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [67.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [67.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-67.5, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [67.5, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-50.0, 0, 0.0]) {
			cylinder(h = 6, r = 10.0);
		}
		translate(v = [-25.0, 0, 0.0]) {
			cylinder(h = 6, r = 10.0);
		}
		cylinder(h = 6, r = 10.0);
		translate(v = [25.0, 0, 0.0]) {
			cylinder(h = 6, r = 10.0);
		}
		translate(v = [50.0, 0, 0.0]) {
			cylinder(h = 6, r = 10.0);
		}
	}
}
