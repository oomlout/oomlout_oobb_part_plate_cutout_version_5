$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-129.5, 62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [129.5, 62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-129.5, -62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [129.5, -62.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-127.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-127.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [127.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [127.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-127.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-127.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [127.5, -60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [127.5, 60.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-65.0, 0, 0.0]) {
			cylinder(h = 3, r = 62.5);
		}
		translate(v = [65.0, 0, 0.0]) {
			cylinder(h = 3, r = 62.5);
		}
	}
}
