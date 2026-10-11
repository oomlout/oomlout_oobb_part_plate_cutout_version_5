$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-107.0, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [107.0, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-107.0, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [107.0, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-105.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-105.0, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-105.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-60.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-60.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [60.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [60.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [105.0, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [105.0, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [105.0, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-105.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-105.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-97.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-97.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [97.5, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [97.5, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [105.0, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [105.0, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-80.0, 0, 0.0]) {
			cylinder(h = 6, r = 17.5);
		}
		translate(v = [-40.0, 0, 0.0]) {
			cylinder(h = 6, r = 17.5);
		}
		cylinder(h = 6, r = 17.5);
		translate(v = [40.0, 0, 0.0]) {
			cylinder(h = 6, r = 17.5);
		}
		translate(v = [80.0, 0, 0.0]) {
			cylinder(h = 6, r = 17.5);
		}
	}
}
