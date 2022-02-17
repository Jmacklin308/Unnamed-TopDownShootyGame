if(flash > 0)
{
	//flash
	flash--;
	shader_set(sh_Flash);
	draw_self();
	shader_reset();
}


if((invulnerable != 0) && ((invulnerable mod 8 > 2) == 0) && (flash == 0))
{
	//skip draw

}else
{
	draw_self();
}