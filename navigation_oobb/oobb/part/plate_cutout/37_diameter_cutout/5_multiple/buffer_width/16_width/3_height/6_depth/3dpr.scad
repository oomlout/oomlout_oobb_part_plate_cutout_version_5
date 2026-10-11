$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-114.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [114.5, 17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [-114.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
			translate(v = [114.5, -17.0, 0]) {
				cylinder(h = 6, r = 5);
			}
		}
	}
	union() {
		translate(v = [-112.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-112.5, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-112.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-22.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-22.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [22.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [22.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [112.5, -15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [112.5, 0.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [112.5, 15.0, 0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-112.5, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-112.5, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-105.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-105.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [105.0, -15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [105.0, 15.0, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [112.5, -7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [112.5, 7.5, 0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-84.0, 0, 0.0]) {
			cylinder(h = 6, r = 18.5);
		}
		translate(v = [-42.0, 0, 0.0]) {
			cylinder(h = 6, r = 18.5);
		}
		cylinder(h = 6, r = 18.5);
		translate(v = [42.0, 0, 0.0]) {
			cylinder(h = 6, r = 18.5);
		}
		translate(v = [84.0, 0, 0.0]) {
			cylinder(h = 6, r = 18.5);
		}
	}
}
