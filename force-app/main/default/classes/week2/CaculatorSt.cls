public  class CaculatorSt {
   //PrMITRO METHOD CDMMENT
   public static integer add(integer a ,integer b) {
    return a+b;
       }
       public static integer add(integer x, integer y, integer z) {
        return x+y+z;
        
       }
       public static integer add(list<Integer> intList) {
         integer sum=0;

         for (Integer eachInt :intList){
            system.debug(eachInt);
            sum+= eachInt;
        
           }
        System.debug(sum);
         return sum;

         
       }
}