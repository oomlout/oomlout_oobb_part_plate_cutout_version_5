$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-54.5, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [54.5, 9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-54.5, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [54.5, -9.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-52.5, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-52.5, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [52.5, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [52.5, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-52.5, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [52.5, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-38.0, 0, 0.0]) {
			cylinder(h = 3, r = 7.0);
		}
		translate(v = [-19.0, 0, 0.0]) {
			cylinder(h = 3, r = 7.0);
		}
		cylinder(h = 3, r = 7.0);
		translate(v = [19.0, 0, 0.0]) {
			cylinder(h = 3, r = 7.0);
		}
		translate(v = [38.0, 0, 0.0]) {
			cylinder(h = 3, r = 7.0);
		}
	}
}
