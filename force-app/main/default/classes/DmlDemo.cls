public  class DmlDemo {
    public static void dmlDemoInsert_standObj1() {
        Account acc = new Account();
        acc.Name = 'SoftInovas';
        insert acc;
        
    }
    public static void dmlDemoInsert_cstmobj() {
        Salesforce_Project__c sp =new Salesforce_Project__c();
        sp.Project_Name__c='Learn dml';
        sp.Description__c = 'learn Dml batch14';
        sp.Status__c = 'New';
        insert sp;        
    }
    public static void dmlUpdateDemo_standObj1() {
        Account ac= new Account();
        ac.Name ='Salesforce';
        system.debug('befotre insert AC'+ ac);
        insert ac;
        system.debug('record is inserted now ac :'+ac);

        //we now have Id in account insert 'ac'
        ac.Name= 'Salesforce Inc';
        update ac;
    }
    public static void dmlUpdateDemo_standobj2() {
        account acc= [select id, name from account where  name like 'SoftInovas%' limit 1];
        acc.Name = 'Softinovas Inc';
        acc.Phone ='9876543210';
        update acc;
        system.debug('acc'+acc);
    }
        

        public  static void dmlInsertDemo_standOgb3() {
            Account acc = [select id ,name from account where name like 'Softinovas%' limit 1];
            Contact c= new contact();
            c.LastName ='Biden';

            c.AccountId= acc.Id;
            insert c;
            
        }
        
    
}