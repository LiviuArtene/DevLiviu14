public  class SptriggerHandler {
   public static void createDefaultSalesForceTicket(list<Salesforce_Project__c> spTriggerNew) {
    List<Salesforce_Ticket__c> newST= new List<Salesforce_Ticket__c>();
    for (Salesforce_Project__c eachSP : spTriggerNew) {
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c ='Default ST';
        st.Salesforce_Project__c = eachSP.Id;
        newST.add(st);
        
    }
    if (!newST.isEmpty()) {
        insert newST;
    }
   }
   public static void validateStatusCompletion(list<salesforce_project__c> sptriggernew, list<salesforce_project__c> sptriggerOld, map<id,Salesforce_Project__c> spTriggernewMap,map<id,Salesforce_Project__c> spTriggerOldMap) {
    set<id> spids =new set<id>();
    for (Salesforce_Project__c eachSp : sptriggernew) {
        if (eachSp.Status__c != spTriggerOldMap.get(eachSp.Id).Status__c && eachSp.Status__c == 'Completed') {
            spids.add(eachSp.id);
            
        }
        
    }
    if (!spids.isEmpty()) {
        List<Salesforce_Ticket__c> listST =[select id,status__c,salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in:spids and status__c != 'Completed'];
        for (Salesforce_Ticket__c eachST : listST) {
            id projectId =eachST.Salesforce_Project__c;
            Salesforce_Project__c newProject =spTriggernewMap.get(projectId);
            newProject.Status__c.addError('Cannot complete project because all tickets are NOT completed.');
            
        }
        
    }
    
   }
}