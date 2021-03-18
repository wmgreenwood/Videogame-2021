function Wave(min, max, duration){
	amplitude = (max-min)*0.5;
	return (min+amplitude) + sin(((current_time*0.001)/duration)*(pi*2))*amplitude;
}