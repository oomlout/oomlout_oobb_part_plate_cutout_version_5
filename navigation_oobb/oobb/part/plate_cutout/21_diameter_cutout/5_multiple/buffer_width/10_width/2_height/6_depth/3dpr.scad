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
		translate(v = [-52.0, 0, 0.0]) {
			cylinder(h = 6, r = 10.5);
		}
		translate(v = [-26.0, 0, 0.0]) {
			cylinder(h = 6, r = 10.5);
		}
		cylinder(h = 6, r = 10.5);
		translate(v = [26.0, 0, 0.0]) {
			cylinder(h = 6, r = 10.5);
		}
		translate(v = [52.0, 0, 0.0]) {
			cylinder(h = 6, r = 10.5);
		}
	}
}
