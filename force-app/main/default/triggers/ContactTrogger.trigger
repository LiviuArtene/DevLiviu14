trigger ContactTrogger on Contact (before insert,after insert, before update,after update) {



   if (trigger.isBefore) {
        system.debug('we are in Before trigger.');
        if (trigger.isInsert) {
            system.debug('before insert trigger.');
            }
        if (trigger.isUpdate) {
            system.debug('before update trigger..');
                       
        }        
    }

    if (trigger.isAfter) {
        System.debug('we are in after trigger');
        if (trigger.isInsert) {
                system.debug('After insert trigger.');
        }
        if (trigger.isUpdate) {
            system.debug('aAfter update trigger..');
            
        }
    
    }

}