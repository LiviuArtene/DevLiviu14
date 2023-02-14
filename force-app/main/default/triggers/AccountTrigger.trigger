/*trigger AccountTrigger on Account (before insert, before update) {
    system.debug(' ----------trigger start -----');
    if (trigger.isInsert) {
        system.debug('befor insert trigger called');
    }
    if (trigger.isUpdate) {
        system.debug('befor update trigger called');

    }
 
    
    system.debug('======= trigger end ======= ');


   /* system.debug('Befor insert trigger called');
    system.debug('after insert trigger c');
    if (trigger.isBefore) {
        system.debug(' bedore insert trigger called.');
    }
    if (trigger.isAfter) {
        system.debug('after insert trigger called');
    }
   
    
}*/
trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');

    if (trigger.isAfter) {
        system.debug( 'new record printed===>'+trigger.new);
        
    }


    system.debug('===== trigger end =====');

    // system.debug('Trigger.isBefore -> ' + Trigger.isBefore);
    // system.debug('Trigger.isAfter -> ' + Trigger.isAfter);

    // system.debug('Trigger.isInsert -> ' + Trigger.isInsert);
    // system.debug('Trigger.isUpdate -> ' + Trigger.isUpdate);

    //will be true for AFTER INSERT
   /* if(Trigger.isAfter && Trigger.isInsert){
        system.debug('after insert trigger called.');
    }

    //will be true for BEFORE INSERT
    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('before insert trigger called.');
    }

    //will be true for AFTER UPDATE
    if(Trigger.isAfter && Trigger.isUpdate){
        system.debug('after update trigger called.');
    }
    //will be true for BEFORE UPDATE
    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('before update trigger called.');
    }
    
   


    /*
    //.isInsert will be true when TRIGGER is running while INSERTing 
    system.debug('trigger.isInsert --> ' + trigger.isInsert); 
    if(trigger.isInsert){
        system.debug('before insert trigger called.');
    }
    system.debug('trigger.isUpdate --> ' + trigger.isUpdate);
    if(trigger.isUpdate){
        system.debug('before update trigger called.');
    }

   */

    /*
    system.debug('Trigger.isBefore --> ' + Trigger.isBefore);
    system.debug('Trigger.isAfter --> ' + Trigger.isAfter);
    if(Trigger.isBefore){
        system.debug('before insert trigger called.');
    }
    if(Trigger.isAfter){
        system.debug('after insert trigger called.');
    }

    */
}