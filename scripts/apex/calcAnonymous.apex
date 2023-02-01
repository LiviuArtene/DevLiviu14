Calculator c = new Calculator();
c.publicMessange();
date dtt = date.today();
Boolean dttCheck = c.leapYearCheck(dtt);
system.debug('today date is in LEAP year ??'+dttCheck);


integer sum13= c.add(25,45,30);
system.debug('sum13 is'+sum13);
integer y = 15;
integer sum1 = c.add (y, x);
system.debug('sum1 is '+ sum1 );



c.printAndReturnMessage ('print this for batch 14');
String result = c.printAndReturnMessage('print this for barch 14');
system.debug(result);