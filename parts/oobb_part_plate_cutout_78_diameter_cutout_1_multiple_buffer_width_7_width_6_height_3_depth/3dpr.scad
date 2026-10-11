$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-47.0, 39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [47.0, 39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-47.0, -39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [47.0, -39.5, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-45.0, -37.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, -22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 37.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, -37.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, 37.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, -37.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, 37.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, -37.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, -22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, -7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, 7.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, 22.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, 37.5, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, -37.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, 37.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, -37.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, 37.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, -30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, 30.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		cylinder(h = 3, r = 39.0);
	}
}
