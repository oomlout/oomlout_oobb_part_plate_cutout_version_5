$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-84.5, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [84.5, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-84.5, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [84.5, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-82.5, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-82.5, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-67.5, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-67.5, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-37.5, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-37.5, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-22.5, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-22.5, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [37.5, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [37.5, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [67.5, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [67.5, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [82.5, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [82.5, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-82.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-82.5, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-75.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-75.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-30.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-30.0, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-30.0, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-30.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-15.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-15.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [15.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [15.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [30.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [30.0, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [30.0, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [30.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [75.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [75.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [82.5, 22.5, 0]) {
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
