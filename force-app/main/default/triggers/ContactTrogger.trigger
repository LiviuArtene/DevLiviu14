trigger ContactTrogger on Contact (before insert,after insert, before update,after update) {

    if (Trigger.isBefore && Trigger.isUpdate) {
        //call validation method of handler
        //ContactTriggerHandler.contactUpdateValidation1(Trigger.new, trigger.old, trigger.newmap,trigger.oldmap);
        ContactTriggerHandler.contactUpdateValidastion2(Trigger.new, trigger.old, trigger.newmap,trigger.oldmap);
   }
   

}

