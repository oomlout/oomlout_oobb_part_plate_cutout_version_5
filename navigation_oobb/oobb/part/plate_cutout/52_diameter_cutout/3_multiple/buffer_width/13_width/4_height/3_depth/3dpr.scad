$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-92.0, 24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [92.0, 24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-92.0, -24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [92.0, -24.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-90.0, -22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-90.0, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-90.0, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-90.0, 22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, -22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, 22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, -22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, 22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [90.0, -22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [90.0, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [90.0, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [90.0, 22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-90.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-90.0, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-90.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-82.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-82.5, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [90.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [90.0, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [90.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-57.0, 0, 0.0]) {
			cylinder(h = 3, r = 26.0);
		}
		cylinder(h = 3, r = 26.0);
		translate(v = [57.0, 0, 0.0]) {
			cylinder(h = 3, r = 26.0);
		}
	}
}
