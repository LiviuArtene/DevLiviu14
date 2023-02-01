public  class StringDemoClass {
    public void  stringMethod1(){
        string sessionDescription = 'lrsrning string method in apex language.';
        system.debug(sessionDescription);

        integer lenth0fStr = sessionDescription.length();
        system.debug('lenght of session description string is ... ' + lenth0fStr);

        //2. uppercase
        string strCapital = sessionDescription.toUpperCase();
        system.debug('capital string is==>'+ strCapital);

        //3. check if string has 'apex' in it
        Boolean containsApex = sessionDescription.contains('apex');
        system.debug('session description contains apex????'+ containsApex);

        Boolean containsApex2 = sessionDescription.CONTAINS('Apex');
        system.debug('session description contains apex????'+ containsApex2);

        Boolean containsApex3 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('session description contains apex????'+ containsApex3);

        string username = '   liviu  a   ';
        system.debug('username length is ==>'+username.length());

        string username1 = '   liviu  a   ';
        system.debug('username length is ==>'+username1.trim());


        


    }
 


}