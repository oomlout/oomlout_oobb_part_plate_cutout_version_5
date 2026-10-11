$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-32.0, 24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [32.0, 24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-32.0, -24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [32.0, -24.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-30.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-30.0, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-30.0, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-30.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-15.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-15.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [15.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [15.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [30.0, -22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [30.0, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [30.0, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [30.0, 22.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-30.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-30.0, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-30.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, -22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, 22.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [30.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [30.0, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [30.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		cylinder(h = 6, r = 20.5);
	}
}
