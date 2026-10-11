$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-107.0, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [107.0, 32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-107.0, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [107.0, -32.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-105.0, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-105.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-105.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-105.0, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [105.0, -30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [105.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [105.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [105.0, 30.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-105.0, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-105.0, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-97.5, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-97.5, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-30.0, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-30.0, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [30.0, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [30.0, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [97.5, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [97.5, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [105.0, -22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [105.0, 22.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-69.0, 0, 0.0]) {
			cylinder(h = 3, r = 32.0);
		}
		cylinder(h = 3, r = 32.0);
		translate(v = [69.0, 0, 0.0]) {
			cylinder(h = 3, r = 32.0);
		}
	}
}
