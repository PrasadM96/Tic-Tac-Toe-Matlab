function pin= getpin(V)
if V>=1000
    pin =1;
elseif V>490
    pin =2;
elseif V>300
    pin = 3;
elseif V>225
    pin =4;
elseif V>180
    pin=5;
elseif V>148
    pin=6;
elseif V>135
    pin =7;
elseif V>118
    pin = 8;
elseif V>100
    pin = 9;
else
    pin=0;
end
return
        