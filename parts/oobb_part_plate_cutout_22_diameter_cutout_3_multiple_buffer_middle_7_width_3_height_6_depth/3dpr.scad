$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-47.0, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [47.0, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-47.0, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [47.0, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-45.0, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-45.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [45.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [45.0, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-45.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-45.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-37.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-37.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-7.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-7.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [7.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [7.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [37.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [37.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [45.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [45.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-27.0, 0, 0.0]) {
			cylinder(h = 6, r = 11.0);
		}
		cylinder(h = 6, r = 11.0);
		translate(v = [27.0, 0, 0.0]) {
			cylinder(h = 6, r = 11.0);
		}
	}
}
