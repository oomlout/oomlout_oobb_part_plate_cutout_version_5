$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-47.0, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [47.0, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-47.0, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [47.0, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-30.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-15.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-15.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [15.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [15.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [30.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, 0.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-37.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-7.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-7.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-7.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-7.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [7.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [7.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [7.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [7.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, 0.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [37.5, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, -7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, 7.5, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-28.0, 0, 0.0]) {
			cylinder(h = 3, r = 4.5);
		}
		translate(v = [-14.0, 0, 0.0]) {
			cylinder(h = 3, r = 4.5);
		}
		cylinder(h = 3, r = 4.5);
		translate(v = [14.0, 0, 0.0]) {
			cylinder(h = 3, r = 4.5);
		}
		translate(v = [28.0, 0, 0.0]) {
			cylinder(h = 3, r = 4.5);
		}
	}
}
