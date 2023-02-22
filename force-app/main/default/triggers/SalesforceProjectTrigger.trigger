trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert) {
    if (trigger.isAfter&& trigger.isInsert) {
        SptriggerHandler.createDefaultSalesForceTicket(trigger.new);
        
    }
    if (trigger.isBefore && trigger.isUpdate) {
        
    }

}