$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-39.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [39.5, 9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-39.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [39.5, -9.5, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-37.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-37.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [37.5, -7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [37.5, 7.5, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-37.5, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-30.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-30.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-15.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-15.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [0.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [0.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [15.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [15.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [30.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [30.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [37.5, 0.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, 0, 0.0]) {
			cylinder(h = 6, r = 5.0);
		}
		translate(v = [-7.5, 0, 0.0]) {
			cylinder(h = 6, r = 5.0);
		}
		translate(v = [7.5, 0, 0.0]) {
			cylinder(h = 6, r = 5.0);
		}
		translate(v = [22.5, 0, 0.0]) {
			cylinder(h = 6, r = 5.0);
		}
	}
}
