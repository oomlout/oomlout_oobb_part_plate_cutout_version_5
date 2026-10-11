$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-39.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [39.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-39.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [39.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-37.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-37.5, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-37.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [37.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [37.5, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [37.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-37.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-17.5, 0, 0.0]) {
			cylinder(h = 3, r = 15.0);
		}
		translate(v = [17.5, 0, 0.0]) {
			cylinder(h = 3, r = 15.0);
		}
	}
}
