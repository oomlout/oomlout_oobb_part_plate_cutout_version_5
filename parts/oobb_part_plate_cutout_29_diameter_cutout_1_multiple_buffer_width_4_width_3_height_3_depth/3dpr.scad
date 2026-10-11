$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-24.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [24.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-24.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [24.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-22.5, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-22.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		cylinder(h = 3, r = 14.5);
	}
}
