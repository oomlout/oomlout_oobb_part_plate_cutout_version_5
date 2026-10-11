$fn = 50;

union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 1.5]) {
					cube(size = [1000, 1000, 0.1]);
				}
				difference() {
					union() {
						hull() {
							translate(v = [-32.0, 32.0, 0]) {
								cylinder(h = 3, r = 5);
							}
							translate(v = [32.0, 32.0, 0]) {
								cylinder(h = 3, r = 5);
							}
							translate(v = [-32.0, -32.0, 0]) {
								cylinder(h = 3, r = 5);
							}
							translate(v = [32.0, -32.0, 0]) {
								cylinder(h = 3, r = 5);
							}
						}
					}
					union() {
						translate(v = [-30.0, -30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [-30.0, -15.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [-30.0, 0.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [-30.0, 15.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [-30.0, 30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [-15.0, -30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [-15.0, -15.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [-15.0, 15.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [-15.0, 30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [0.0, -30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [0.0, 30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [15.0, -30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [15.0, -15.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [15.0, 15.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [15.0, 30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [30.0, -30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [30.0, -15.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [30.0, 0.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [30.0, 15.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [30.0, 30.0, 0]) {
							cylinder(h = 3, r = 3.0);
						}
						translate(v = [-30.0, -22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-30.0, -7.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-30.0, 7.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-30.0, 22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-22.5, -30.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-22.5, -22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-22.5, -15.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-22.5, -7.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-22.5, 0.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-22.5, 7.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-22.5, 15.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-22.5, 22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-22.5, 30.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-15.0, -22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-15.0, 22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-7.5, -30.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-7.5, -22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-7.5, 22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [-7.5, 30.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [0.0, -22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [0.0, 22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [7.5, -30.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [7.5, -22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [7.5, 22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [7.5, 30.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [15.0, -22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [15.0, 22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [22.5, -30.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [22.5, -22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [22.5, -15.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [22.5, -7.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [22.5, 0.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [22.5, 7.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [22.5, 15.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [22.5, 22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [22.5, 30.0, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [30.0, -22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [30.0, -7.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [30.0, 7.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						translate(v = [30.0, 22.5, 0]) {
							cylinder(h = 3, r = 1.5);
						}
						cylinder(h = 3, r = 15.0);
					}
				}
			}
		}
	}
}
