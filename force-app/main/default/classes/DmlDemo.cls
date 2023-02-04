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
        public static void dmlDemoInsert_cstmpbj2() {
            Salesforce_Project__c sp = [select id from Salesforce_Project__c order by CreatedDate desc limit 1];

            Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
            newST.Subject__c = 'create related record via apex';
            newST.Priority__c= 'Hight';
            newST.Status__c = 'New';
            newST.Requested_by_date__c = date.today();
            newST.Salesforce_Project__c = sp.Id;
            insert newST;

        }
    public static void dmlDemoMultipleInsert_right1() {
        List<Account> listAccount = new List<Account>();
        
        Account acc1 =new Account();
        acc1.Name ='Bulk acc2';
        acc1.ShippingCity = 'new York';
        acc1.Active__c = 'Yes';
        listAccount.add(acc1);

        Account acc2 = new Account();
        acc2.Name= 'Bulk acc2';
        acc2.ShippingCity= 'DC';
        acc2.Active__c ='yes';
        listAccount.add(acc2);

        account acc3 = new account();
        acc3.name =  'Bulk acc3';
        acc3.ShippingCity = 'dc';
        acc3.Active__c = 'yes';
        listAccount.add(acc3);

        insert listAccount;
       }

       public static void dmlDemoMultipleInsert_right2() {
        List<Account> insertAccountList = new List<Account>();
        for (Integer i = 0; i < 166; i++) {
            Account a= new Account();
            a.Name= 'Softinnovas V-'+I+'Inc';
            a.Phone = '9876653421'+I;
            a.Active__c = 'Yes';
            a.AccountNumber = 'RT-{'+i+' }';
            insertAccountList.add(a);

            
            
        }
        if ( ! insertAccountList.isEmpty()) {
            insert insertAccountList;
            
        }
        
       }

       public static void dmlDemoMultipleUpdate_right1() {
        List<account> listAccount = [select id , name from account order by CreatedDate desc limit 50];
        for (account eachAcc : listAccount) {
            eachAcc.Name = eachAcc.Name+ 'B.0';
            
        }
        update listAccount;
       }
       
       public static void dmlDemoMultipleUpdate_right2() {
        List<account> listAccount = [select id , name, Active__c from account ];
        List<Account> updateAccountList = new List<Account>();

        for (account eachAcc : listAccount) {
            if (eachAcc.Active__c == 'Yes') {
                eachAcc.Name= eachAcc.Name+'Yy';
                updateAccountList.add(eachAcc);
                               
            }else if (eachAcc.Active__c ==null) {
                eachAcc.Name=eachAcc.Name+'Nn';

            } 


            
        }
        if (!updateAccountList.isEmpty()) {
            update updateAccountList;
        }
       }
}