$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-24.5, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [24.5, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-24.5, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [24.5, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-22.5, -22.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [-22.5, -7.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [-22.5, 7.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [-22.5, 22.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [-7.5, -22.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [-7.5, 22.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [7.5, -22.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [7.5, 22.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [22.5, -22.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [22.5, -7.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [22.5, 7.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [22.5, 22.5, 0]) {
			cylinder(h = 9, r = 3.0);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [-22.5, 0.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [-15.0, -22.5, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [-15.0, 22.5, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [0.0, -22.5, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [0.0, 22.5, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [15.0, -22.5, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [15.0, 22.5, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [22.5, 0.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.5);
		}
		cylinder(h = 9, r = 15.0);
	}
}
