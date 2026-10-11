$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-47.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [47.0, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-47.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [47.0, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-45.0, 0.0, 0]) {
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
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, 15.0, 0]) {
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
		translate(v = [45.0, 0.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-45.0, -7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-45.0, 7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-37.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-37.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-22.5, 15.0, 0]) {
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
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [37.5, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [37.5, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [45.0, -7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [45.0, 7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-25.0, 0, 0.0]) {
			cylinder(h = 9, r = 10.0);
		}
		cylinder(h = 9, r = 10.0);
		translate(v = [25.0, 0, 0.0]) {
			cylinder(h = 9, r = 10.0);
		}
	}
}
