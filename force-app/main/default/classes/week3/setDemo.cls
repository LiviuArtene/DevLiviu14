public  class setDemo {
   public static void citySet(){
    Set<String>cityes =new Set<String>();
    cityes.add('Tokyo');
    cityes.add('Lisbon');
    cityes.add('Berlin');
    cityes.add('Nairobi');
    cityes.add('Tokyo');
    cityes.add('BERLIN');
    cityes.add('Nairobi');

    system.debug('city set:'+cityes);

   }

   public static void randomIntegerSet(){
    Set<Integer>intSet =new Set<Integer>();
    intSet.add(10);
    intSet.add(15);
    intSet.add(21);
    intSet.add(15);
    intSet.add(15);
    intSet.add(15);
    system.debug('set of integers'+ intSet);
   }

public static Set<Integer> setFromList(list <integer> istList){
    Set<Integer> intSet =new Set<Integer>();
    intSet.addAll(intSet);
    return intSet;
}

public static set<string> UpperCaseSet ( set<string> setStr){
    Set<String> UpperSet =new Set<String>();
    for (string eachStr:setStr){
        string tempStr = eachStr.toUpperCase();
        UpperSet.add(tempStr);

    }
    return UpperSet;

}
}