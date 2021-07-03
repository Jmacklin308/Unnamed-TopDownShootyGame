scale = 6;


view_width = 1920 / scale;
view_height = 1080 / scale;



window_scale = 3;


//Adjust window scale to make this boi bigga
window_set_size(view_width*window_scale, view_height*window_scale);

//Center the screen
alarm[0] = 1;


surface_resize(application_surface,view_width*window_scale,view_height*window_scale);