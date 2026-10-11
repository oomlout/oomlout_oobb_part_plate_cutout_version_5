$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-144.5, 24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [144.5, 24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-144.5, -24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [144.5, -24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-142.5, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-142.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-142.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-142.5, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-82.5, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-82.5, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-22.5, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-22.5, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [22.5, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [22.5, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [82.5, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [82.5, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [142.5, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [142.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [142.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [142.5, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-142.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-142.5, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-142.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-135.0, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-135.0, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-90.0, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-90.0, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-82.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-82.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-75.0, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-75.0, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-30.0, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-30.0, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [30.0, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [30.0, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [75.0, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [75.0, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [82.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [82.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [90.0, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [90.0, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [135.0, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [135.0, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [142.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [142.5, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [142.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-110.0, 0, 0.0]) {
			cylinder(h = 6, r = 25.0);
		}
		translate(v = [-55.0, 0, 0.0]) {
			cylinder(h = 6, r = 25.0);
		}
		cylinder(h = 6, r = 25.0);
		translate(v = [55.0, 0, 0.0]) {
			cylinder(h = 6, r = 25.0);
		}
		translate(v = [110.0, 0, 0.0]) {
			cylinder(h = 6, r = 25.0);
		}
	}
}
