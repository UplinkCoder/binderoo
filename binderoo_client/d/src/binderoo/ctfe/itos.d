module ctfe.itos;

string itos(int val) pure
{
	bool negative;
	if (val < 0)
	{
		negative = true;
		val = -val;
	}

	string s;
	do
	{
		s = cast(char)('0' + (val % 10)) ~ s;
		val /= 10;
	}
	while (val > 0);

	if (negative)
		s = '-' ~ s;
	return s;
}
