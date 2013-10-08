// The Logo
logo_h = 3;
color("Gold")
	scale([20,20,1])
		dxf_linear_extrude(file = "components/sdw_logo.dxf", height = logo_h);

// The Handle
handle_x = 71;
handle_y = 78;
handle_s = 5;
handle_h = 50;
color("Blue")
	linear_extrude(height = handle_h, convexity = 20)
		translate([handle_x,handle_y,0])
			square([handle_s,handle_s], center = true);

// The Grip
grip_h = 5;
grip_r1 = 0;
grip_r2 = 10;

color("Red")
	translate([handle_x,handle_y,handle_h])
		cylinder(h = grip_h, r1 = grip_r1, r2 = grip_r2, center = true);
color("Red")
	translate([handle_x,handle_y,handle_h + 1 + (grip_h/2)])
		cylinder(h = grip_h/2, r = grip_r2, center = true);
