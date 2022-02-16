draw_self();

if(flash > 0)
{
	//flash
	flash--;
	shader_set(sh_Flash);
	draw_self();
	shader_reset();
}