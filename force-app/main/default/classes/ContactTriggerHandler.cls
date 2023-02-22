public class ContactTriggerHandler {
  public static void ContactUpdateValidation1 (List<contact> conTriggerNew, List<Contact> conTriggerOld, map<id,contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {
    for (contact eachContact : conTriggerNew) {
        contact oldContact = conTriggerOldMap.get(eachContact.Id);
        if (oldContact.LeadSource == 'Partner Referral') {
            eachContact.addError('Cannot update Partner Referrel contact.');
            
        }
        
    }
    
  }
  public static void contactUpdateValidastion2(List<contact> conTriggerNew, List<Contact> conTriggerOld, map<id,contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {
    for (contact eachContact : conTriggernew) {
        if (eachContact.LeadSource != conTriggerOldMap.get(eachContact.id
        ).LeadSource) {
            eachContact.LeadSource.addError('Cannot update Lead Source "Dumy"!!!');
        }
        
    }
    
  }
  public static void rollUpSummeryUpdate(List<contact> conTriggerNew, List<Contact> conTriggerOld, map<id,contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

    set<id> accountIds= new set<id>();
    if (Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete) {
      for (contact eachCon : contriggerNew) {
        if (eachCon.Accountid != null) {
          accountids.add(eachCon.AccountId);
             
        }
      }
    }
    if (Trigger.isDelete || Trigger.isUpdate ) {
      for (contact eachCon : contriggerold) {
        if (eachCon.Accountid != null) {
          accountids.add(eachCon.AccountId);
        }
      }
    }
      
      
    
    if (!accountIds.isEmpty()) {
      list<account> listAcc =[select id, number_of_contacts__c,(select id from contacts) from account where id in:accountIds];
      for (account eachAcc : listAcc) {
        integer numOfContacts = 0;
        if (eachAcc.Contacts!= null) {
          numOfContacts = eachAcc.Contacts.size();

        } 
        eachAcc.Number_Of_Contacts__c = numOfContacts;

      }
      if (!listAcc.isEmpty()) {
        update listAcc;
      }
    }
     
    }
}
    
  