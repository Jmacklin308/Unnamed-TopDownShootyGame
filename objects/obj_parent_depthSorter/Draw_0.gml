//resize the grid
var dgrid = ds_depth_grid;

//instance number of depth object parent
var instNum = instance_number(obj_parent_depth);

//resize the grid
ds_grid_resize(dgrid,2,instNum);

//run this on every depth object under obj_parent_depth
var yy = 0;

//go through every object add add to grid
with(obj_parent_depth)
{
	ds_grid_add(dgrid,0,yy,id);
	ds_grid_add(dgrid,1,yy,y);
	yy++;
}

//sort grid in acsending order
ds_grid_sort(dgrid,1,true);


//loop through and draw all instances
yy = 0;
repeat(instNum)
{
	var inst = dgrid[# 0, yy];
	with(inst)
	{
		event_perform(ev_draw,0);
	}
	yy++;
}

