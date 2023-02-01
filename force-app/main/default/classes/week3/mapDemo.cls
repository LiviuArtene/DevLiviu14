public  class mapDemo {
   public static string retrieveMonth (integer n ){
    string month ='';
   map<integer,string> mapMonth = new map<integer,string >();
   mapMonth.put(1, 'January');
   mapMonth.put(2, 'February');
   mapMonth.put(3, 'aMarch');
   mapMonth.put(4, 'April');
   mapMonth.put(5, 'May');
   mapMonth.put(6, 'June');
   mapMonth.put(7, 'Julay');
   mapMonth.put(8, 'August');
   mapMonth.put(9, 'September');
   mapMonth.put(10, 'Octomber');
   mapMonth.put(11, 'November');
   mapMonth.put(12, 'December');


   if(mapMonth.containsKey(n)){
    month=mapMonth.get(n);

   }else{
    month='Error Error no key exists.please try againe ';
   }
   
  return month;


   }
}