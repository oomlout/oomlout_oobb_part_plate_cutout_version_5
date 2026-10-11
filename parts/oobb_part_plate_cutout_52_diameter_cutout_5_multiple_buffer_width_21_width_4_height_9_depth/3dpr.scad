$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-152.0, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [152.0, 24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-152.0, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [152.0, -24.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-150.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-150.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-150.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-150.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-90.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-90.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [90.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [90.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [150.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [150.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [150.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [150.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-150.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-150.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-150.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-142.5, -22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-142.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-142.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-142.5, 22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-82.5, -22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-82.5, 22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-22.5, -22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-22.5, 22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [22.5, -22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [22.5, 22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [82.5, -22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [82.5, 22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [142.5, -22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [142.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [142.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [142.5, 22.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [150.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [150.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [150.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-114.0, 0, 0.0]) {
			cylinder(h = 9, r = 26.0);
		}
		translate(v = [-57.0, 0, 0.0]) {
			cylinder(h = 9, r = 26.0);
		}
		cylinder(h = 9, r = 26.0);
		translate(v = [57.0, 0, 0.0]) {
			cylinder(h = 9, r = 26.0);
		}
		translate(v = [114.0, 0, 0.0]) {
			cylinder(h = 9, r = 26.0);
		}
	}
}
