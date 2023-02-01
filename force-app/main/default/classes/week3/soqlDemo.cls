public  class soqlDemo {
  public static void accounSOQL_1() {
    List<Account> listAcc= [select id ,name,  phone from account order by createddate desc];
    system.debug('listo of account '+listAcc);
}

    public static void accounSoqL_11(){
        account acc =[select id,name,phone from account order by createddate desc limit 1];
        system.debug('account acc '+ acc);
         
  }

  public static void accountSoqL_2() {
    account acc = [select id, name , phone, accountNumber from Account ORDER BY CreatedDate DESC LIMIT 1];
    system.debug('account acc'+acc);
    string aName=acc.Name;
    string aphone=acc.Phone;
    system.debug('account nume is '+ aName + ' ,  phone is ' +aphone+ ' , acount number is '+acc.AccountNumber );    
  }
  public static void accountSoqL_3() {
    List<Account> listaccount =[select id,name ,phone ,accountnumber from account order by CreatedDate];
    for (account eachAccount : listaccount) {
        system.debug('eachaccount start');
        system.debug(' each account record :'+eachAccount);
        string accName=eachAccount.Name;
    string accphone=eachAccount.Phone;
    system.debug(' account name is '+accName+' , account phone is '+accphone+ ' , acc number is '+eachAccount.AccountNumber);
    system.debug('eachaccount loop END');


    system.debug('eachaccount start');
        
    }
}
    public static void accountFillter_Soql() {
        string accountFilter='DsA';
        List<Account> listsAcc = [select id, name from account where name = :accountFilter];
        system.debug('list acc '+listsAcc);
        
    }
    public static void accountFillter_Soql( string accountFilter) {
       
        List<Account> listsAcc = [select id, name from account where name = :accountFilter];
        system.debug('list acc '+listsAcc);
  }
  public static void choldToParent_SOQL1() {
    list <Contact> listContact = [select id , name, phone , account.name , account.industry from Contact where Account.industry ='energy' ];

    for (contact eachcontac : listContact){
      string accName = eachcontac.Account.Name;
      system.debug('contact Name is ' +eachcontac.Name+' its account is  '+accName);


       }
  }
  public static void parentTOChild_SOQL1() {
    List<account> listAcc = [select name, annualrevenue, (select name , amount from opportunities where  stagename='Closed won')from account where type ='Customer - direct'];
    for (account eachAcc :listAcc){
      system.debug('account name is '+eachAcc.Name+'acc annual revenue '+eachAcc.AnnualRevenue);
      List<Opportunity> eachAccOpp =eachAcc.Opportunities;
      system.debug('---------');
      for(Opportunity eachOpp :eachAccOpp){
        System.debug('Opp name'+eachOpp.Name+' , amount is '+eachOpp.Amount);
      }
    }
    
  }
  //projects, and its tickets.
  //2 req
      //1 total tickets for each PROJECT.

      public static void parentChild_SOQL2() {
        list<salesforce_project__c> listSP =[select name ,project_name__c, (select subject__c, priority__c from salesforce_tickets__r)from salesforce_project__c];
        for (salesforce_project__c eachSP : listSP){

          list<salesforce_ticket__c> listST =eachSP.salesforce_tickets__r;
          integer totalTickets =listST.size();
          integer highPriorityST =0;
          for(salesforce_ticket__c eachST : listST){
            if (eachST.priority__c =='High'){
              highPriorityST++;
            }
          }
          system.debug('Project name '+eachSP+' total tickets '+totalTickets+' high priority are'+highPriorityST);
        }
        
      }
}