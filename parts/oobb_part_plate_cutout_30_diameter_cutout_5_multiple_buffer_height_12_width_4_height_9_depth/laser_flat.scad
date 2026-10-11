$fn = 50;

union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -3.0]) {
					cube(size = [1000, 1000, 0.1]);
				}
				difference() {
					union() {
						hull() {
							translate(v = [-84.5, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [84.5, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [-84.5, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [84.5, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
						}
					}
					union() {
						translate(v = [-82.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-82.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-67.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-67.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-52.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-52.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-37.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-37.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-22.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-22.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-7.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-7.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [7.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [7.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [22.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [22.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [37.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [37.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [52.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [52.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [67.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [67.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [82.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [82.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-75.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-75.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-60.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-60.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-52.5, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-52.5, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-45.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-45.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-30.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-30.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [30.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [30.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [45.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [45.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [52.5, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [52.5, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [60.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [60.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [75.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [75.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-70.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						translate(v = [-35.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						cylinder(h = 9, r = 15.0);
						translate(v = [35.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						translate(v = [70.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 69, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 0.0]) {
					cube(size = [1000, 1000, 0.1]);
				}
				difference() {
					union() {
						hull() {
							translate(v = [-84.5, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [84.5, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [-84.5, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [84.5, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
						}
					}
					union() {
						translate(v = [-82.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-82.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-67.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-67.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-52.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-52.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-37.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-37.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-22.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-22.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-7.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-7.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [7.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [7.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [22.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [22.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [37.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [37.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [52.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [52.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [67.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [67.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [82.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [82.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-75.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-75.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-60.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-60.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-52.5, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-52.5, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-45.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-45.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-30.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-30.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [30.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [30.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [45.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [45.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [52.5, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [52.5, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [60.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [60.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [75.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [75.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-70.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						translate(v = [-35.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						cylinder(h = 9, r = 15.0);
						translate(v = [35.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						translate(v = [70.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 138, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 3.0]) {
					cube(size = [1000, 1000, 0.1]);
				}
				difference() {
					union() {
						hull() {
							translate(v = [-84.5, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [84.5, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [-84.5, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [84.5, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
						}
					}
					union() {
						translate(v = [-82.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-82.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-67.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-67.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-52.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-52.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-37.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-37.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-22.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-22.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-7.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-7.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [7.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [7.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [22.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [22.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [37.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [37.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [52.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [52.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [67.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [67.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [82.5, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [82.5, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-75.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-75.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-60.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-60.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-52.5, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-52.5, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-45.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-45.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-30.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-30.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-15.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [15.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [30.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [30.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [45.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [45.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [52.5, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [52.5, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [60.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [60.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [75.0, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [75.0, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-70.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						translate(v = [-35.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						cylinder(h = 9, r = 15.0);
						translate(v = [35.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						translate(v = [70.0, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
					}
				}
			}
		}
	}
}
