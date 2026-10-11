$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-99.5, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [99.5, 17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-99.5, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [99.5, -17.0, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-97.5, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-97.5, 0.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-97.5, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [97.5, -15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [97.5, 0.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [97.5, 15.0, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-97.5, -7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-97.5, 7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-60.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-60.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [60.0, -15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [60.0, 15.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [97.5, -7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [97.5, 7.5, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-76.0, 0, 0.0]) {
			cylinder(h = 9, r = 16.5);
		}
		translate(v = [-38.0, 0, 0.0]) {
			cylinder(h = 9, r = 16.5);
		}
		cylinder(h = 9, r = 16.5);
		translate(v = [38.0, 0, 0.0]) {
			cylinder(h = 9, r = 16.5);
		}
		translate(v = [76.0, 0, 0.0]) {
			cylinder(h = 9, r = 16.5);
		}
	}
}
