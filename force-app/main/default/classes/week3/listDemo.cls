public  class listDemo {
   public static string candidateList(integer i){
    List<String> listCandidate = new list<string>();
    listCandidate.add('Marc');
    listCandidate.add('Elon');
    listCandidate.add('Bill');
    listCandidate.add('Marc');
    system.debug('Candidates ==>'+ listCandidate);

    string candidate = '';
    if (i>=0&&i<listCandidate.size()) {
        
    } else {
        candidate='no value found .Try again later';
        
    }
    return candidate;
   }
   public static void randomIntegerList(){
    List<integer> listInteger = new List<integer>();
    listInteger.add(10);
    listInteger.add(15);
    listInteger.add(21);
    listInteger.add(15);
    listInteger.add(15);
    system.debug(' Random integer list ==>'+listInteger);
    Integer index1Value = listInteger[2];
    system.debug('VALUE AT INDEX 2 IS '+index1Value);
    integer index2VALUE =listInteger[0];
    System.debug('VALUE AT INDEX 0 IS '+index2VALUE);
    

   }

   public static void allCats(){
    List<cat> cats = new List<cat>();
    cat c1=new cat('cinamon','brown');
    cat c2=new cat('duman','dark gray');
    cats.add(c1);
    cats.add(c2);
    system.debug('cats ===>'+cats);
    if (!cats.isEmpty()) {
        system.debug('cat at 0'+cats[0]);
        
    }


   }

   public static void itegerlist(){
    List<integer> listInteger = new List<integer>();
    listInteger.add(10);
    listInteger.add(15);
    listInteger.add(21);
    listInteger.add(15);
    listInteger.add(15);

    for (integer eachInteger : listInteger) {
        system.debug(eachInteger);
        
    }
   }
}