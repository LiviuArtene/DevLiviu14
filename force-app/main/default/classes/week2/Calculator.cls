public class Calculator {
    public void welcomeMessage(){
        system.debug('Welcome to apex calc, update');
    }
        public void printNewMessage(string msg) {
            system.debug(msg);

        }


    
    public string printAndReturnMessage(string m){
        string returnStr = '';
        returnStr = m + '...Ok Cool.';
        return returnStr;
    }
    public Integer add(Integer a,integer b){
        Integer sum = a+b;
        return sum;
    }
    public integer add(integer x,integer y,integer z){
        integer sum= x+y+z;
        return sum;
    }
    public Boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    
    }

    public void publicMessange(){
        system.debug('public method called');
        system.debug('cslling private method');
        privateMessage1();
        system.debug('called private method');

    }
    private void privateMessage1(){
        system.debug('private method called');
    }
}