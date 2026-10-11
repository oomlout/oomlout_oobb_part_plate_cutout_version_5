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
							translate(v = [-32.0, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [32.0, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [-32.0, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [32.0, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
						}
					}
					union() {
						translate(v = [-30.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-30.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-15.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-15.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [0.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [0.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [15.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [15.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [30.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [30.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-22.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-22.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-7.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-7.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [7.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [7.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [22.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [22.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-17.5, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						translate(v = [17.5, 0, 0.0]) {
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
							translate(v = [-32.0, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [32.0, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [-32.0, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [32.0, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
						}
					}
					union() {
						translate(v = [-30.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-30.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-15.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-15.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [0.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [0.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [15.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [15.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [30.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [30.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-22.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-22.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-7.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-7.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [7.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [7.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [22.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [22.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-17.5, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						translate(v = [17.5, 0, 0.0]) {
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
							translate(v = [-32.0, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [32.0, 24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [-32.0, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
							translate(v = [32.0, -24.5, 0]) {
								cylinder(h = 9, r = 5);
							}
						}
					}
					union() {
						translate(v = [-30.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-30.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-15.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-15.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [0.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [0.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [15.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [15.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [30.0, -22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [30.0, 22.5, 0]) {
							cylinder(h = 9, r = 3.0);
						}
						translate(v = [-22.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-22.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-7.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-7.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, -15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [0.0, 15.0, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [7.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [7.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [22.5, -22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [22.5, 22.5, 0]) {
							cylinder(h = 9, r = 1.5);
						}
						translate(v = [-17.5, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
						translate(v = [17.5, 0, 0.0]) {
							cylinder(h = 9, r = 15.0);
						}
					}
				}
			}
		}
	}
}
