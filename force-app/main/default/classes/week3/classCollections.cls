public class classCollections {
    public static string listAssignment( integer i) {
       List<string> LstMonth = new List<string>();
       LstMonth.add('January');
       LstMonth.add('February');
       LstMonth.add('March');
       LstMonth.add('April');
       LstMonth.add('May');
       LstMonth.add('June');
       LstMonth.add('July');
       LstMonth.add('Augest');
       LstMonth.add('September');
       LstMonth.add('October');
       LstMonth.add('November');
       LstMonth.add('December');

       String outPutMonth='';

       if (i>=0 && i>LstMonth.size()) {
        outPutMonth=LstMonth[i];
        
       } else {
        outPutMonth='Not avalid Month';
                
       }
       return outPutMonth;


        
    }
}