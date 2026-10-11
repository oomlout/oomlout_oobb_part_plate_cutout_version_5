$fn = 50;

difference() {
	union() {
		hull() {
			translate(v = [-47.0, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [47.0, 9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-47.0, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [47.0, -9.5, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
	}
	union() {
		translate(v = [-45.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-45.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [45.0, -7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [45.0, 7.5, 0]) {
			cylinder(h = 9, r = 3.25);
		}
		translate(v = [-45.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [45.0, 0.0, 0]) {
			cylinder(h = 9, r = 1.8);
		}
		translate(v = [-34.0, 0, 0.0]) {
			cylinder(h = 9, r = 6.0);
		}
		translate(v = [-17.0, 0, 0.0]) {
			cylinder(h = 9, r = 6.0);
		}
		cylinder(h = 9, r = 6.0);
		translate(v = [17.0, 0, 0.0]) {
			cylinder(h = 9, r = 6.0);
		}
		translate(v = [34.0, 0, 0.0]) {
			cylinder(h = 9, r = 6.0);
		}
	}
}
