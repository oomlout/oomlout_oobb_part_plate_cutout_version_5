$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-54.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [54.5, 17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [-54.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
			translate(v = [54.5, -17.0, 0]) {
				cylinder(h = 3, r = 5);
			}
		}
	}
	union() {
		translate(v = [-52.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-52.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-7.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-7.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [7.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [7.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [52.5, -15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [52.5, 15.0, 0]) {
			cylinder(h = 3, r = 3.25);
		}
		translate(v = [-45.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-45.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-30.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-30.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [0.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [0.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [30.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [30.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, -15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [45.0, 15.0, 0]) {
			cylinder(h = 3, r = 1.8);
		}
		translate(v = [-39.0, 0, 0.0]) {
			cylinder(h = 3, r = 10.5);
		}
		translate(v = [-13.0, 0, 0.0]) {
			cylinder(h = 3, r = 10.5);
		}
		translate(v = [13.0, 0, 0.0]) {
			cylinder(h = 3, r = 10.5);
		}
		translate(v = [39.0, 0, 0.0]) {
			cylinder(h = 3, r = 10.5);
		}
	}
}
