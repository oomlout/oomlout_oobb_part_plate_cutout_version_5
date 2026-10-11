$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-32.0, 39.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [32.0, 39.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-32.0, -39.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [32.0, -39.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-30.0, -37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, 37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-15.0, -37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-15.0, 37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, -37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [0.0, 37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [15.0, -37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [15.0, 37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, -37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, -22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, 22.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [30.0, 37.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-30.0, -30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-30.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-30.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-30.0, 30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-22.5, -37.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-22.5, -30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-22.5, 30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-22.5, 37.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-15.0, -30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-15.0, 30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-7.5, -37.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-7.5, 37.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [7.5, -37.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [7.5, 37.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [15.0, -30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [15.0, 30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [22.5, -37.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [22.5, -30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [22.5, 30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [22.5, 37.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [30.0, -30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [30.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [30.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [30.0, 30.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		cylinder(h = 9, r = 27.0);
	}
}
