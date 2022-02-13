var int = argument0;

if (int == 0) return 1;
for(var d = 10; ( int / d ) >= 1; d++  ) {
    break;
}

var places = d;

var str = string_format(int, places, 0);
return str;
