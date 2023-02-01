public  class PrimitivDateTypeDemo2 {
    public void printNewDate(){
        system.debug('create new date here');
        
        Date newDate =date.newInstance(1989, 3, 17);
        system.debug('new date is ' +newDate);
        
        Date newDate2 =date.newInstance(2022, 1, 9);
        system.debug('new date is ' +newDate2);

        Date todayDate = date.today();
        system.debug('today date is ' +todayDate);


        
    }
    public void printNewTime(){
        Time myTime =time.newInstance(9, 80, 30, 20);
        system.debug('my time is ' + myTime);

        Time myTime1 =time.newInstance(7, 34, 30, 20);
        system.debug('my time is ' + myTime1);
    }
    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = time.newInstance(8, 50, 30, 40);
        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('dt1 '+dt1);

        //2 new datetime using YEAR, MONTH, DAY
        Datetime dt2 = Datetime.newInstance(2019,5,25);
        System.debug('dt2 is ' + dt2);//is printing in GMT 0 zone

        //3. newistance using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND
        Datetime dt3 = Datetime.newInstance(2022, 6, 23, 15, 35, 43);
        system.debug('dt3 '+ dt3);

        //4. newInstance from longtime
        long longTime = 0;
        datetime dt4 = datetime.newInstance(longtime);
        system.debug('dt4 '+ dt4);

        long longTime2 = 147375738457375L;
        datetime dt4_1 = datetime.newInstance(longTime2);
        system.debug('dt4_1 ==> '+dt4_1);

        //6 new datetime
        datetime dt6 = datetime.now();
        system.debug('dt6 is '+ dt6);

 
    }
}