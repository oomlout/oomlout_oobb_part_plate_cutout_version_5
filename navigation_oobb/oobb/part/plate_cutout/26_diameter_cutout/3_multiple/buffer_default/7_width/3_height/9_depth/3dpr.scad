$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-47.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [47.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-47.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [47.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-45.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-45.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [45.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [45.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-45.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-45.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [45.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [45.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-31.0, 0, 0.0]) {
			cylinder(h = 9, r = 13.0);
		}
		cylinder(h = 9, r = 13.0);
		translate(v = [31.0, 0, 0.0]) {
			cylinder(h = 9, r = 13.0);
		}
	}
}
