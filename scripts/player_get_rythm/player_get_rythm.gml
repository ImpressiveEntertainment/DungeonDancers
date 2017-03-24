// Segons la perfecció del nostre pas aplicarem un RythmPlus a la barra de ritme o un altre
switch (argument0)
{
	case BAD:
		RythmPlus = -1;
	break;
	case GOOD:
		RythmPlus = 2;
	break;
	case NICE:
		RythmPlus = 3;
	break;
	case PERFECT:
		RythmPlus = 5;
	break;
}

// Mostrem el valor de ritme que hem guanyat/perdut
if RythmPlus > 0
	float_message("+" + string(RythmPlus) + " rythm", -30, 0);
else
	float_message(string(RythmPlus) + " rythm", -30, 0);

// Apluquem la suma o resta de ritme mantenint la barra sempre dins dels límits
Rythm += RythmPlus;
Rythm = clamp(Rythm, 0, RythmMax);