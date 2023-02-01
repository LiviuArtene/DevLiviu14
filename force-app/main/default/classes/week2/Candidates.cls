public  class Candidates {
    public string name;
    public string gender;
    public static String companyName;
    public static integer countCandidates =0;

    public void printCanditate(){
        system.debug ('------- Start ------');
        system.debug('candidate name is '+ name +'  gender is '+gender);
        system.debug('company Name is  '+companyName);
        system.debug('------- End ----');
    
    }
    public static void printCompany(){
        system.debug('company => '+ companyName);
       // system.debug('name of candidate => '+ name);
    }

}