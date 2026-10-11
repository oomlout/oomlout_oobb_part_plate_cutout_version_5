$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-62.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [62.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-62.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [62.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-60.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-60.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-45.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [45.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [60.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [60.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-37.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-37.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-7.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-7.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [7.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [7.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [37.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [37.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-52.0, 0, 0.0]) {
			cylinder(h = 9, r = 10.5);
		}
		translate(v = [-26.0, 0, 0.0]) {
			cylinder(h = 9, r = 10.5);
		}
		cylinder(h = 9, r = 10.5);
		translate(v = [26.0, 0, 0.0]) {
			cylinder(h = 9, r = 10.5);
		}
		translate(v = [52.0, 0, 0.0]) {
			cylinder(h = 9, r = 10.5);
		}
	}
}
