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
   
    if (Trigger.isBefore) {
        //call handler method
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }
        
   











// Map<Id, account> trgnewMap = trigger.newMap;
// Map<Id, account> trgnoldMap = trigger.oldMap;

//     if (trigger.isBefore && trigger.isUpdate) {
//         integer countWeb=0;
//         for (id eachid : trgnewMap.keySet()) {
//             Account newAccount = trgnewMap.get(eachid);
//             Account oldAccount = trgnoldMap.get(eachid);

//             system.debug('new account websit field value '+ newAccount.Website);
//             system.debug('Old account websit field value '+ oldAccount.Website);
//             if (newAccount.Website!= oldAccount.Website) {
//                 system.debug('for Account ' +newAccount.Name +'  new website is  '+ newAccount.Website);
//                 countweb++;


                
//             }
//         }
//         system.debug('total of Account  whit website Update '+countweb);
   // }




// if (Trigger.isAfter && Trigger.isUpdate) {

//     Set<id> setIds = trgnewMap.keySet();

//     for (Id eachID : setIds) {
//         Account newAcc= trgnewMap.get(eachID);
//         Account oldAcc= trgnoldMap.get(eachID);

//         string newName= newAcc.Name;
//         string oldName= oldAcc.Name;
//         system.debug( 'new Account name is ' + newName +'Old account name Was '+oldName);
        
//     }

// }

system.debug('----- trigger EnD -----');

/*
if (Trigger.isBefore && Trigger.isinsert) {
   system.debug('======Before Insert=====');
       system.debug('trigger.newnap in BEFORE INSERT -->  ' + trgNewMap); //.new is present. ID is null.
       system.debug('trigger.oldMap -> ' + trgnoldMap);
} 
 if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('====AFTER INSERT====');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes
        system.debug('trigger.oldMap -> ' + trgnoldMap);//Old is null. So oldMap is also NULL, obviously.
    }

 if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('====BEFORE UPDATE====');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes
        system.debug('trigger.oldMap -> ' + trgnoldMap);//yes
    }
 if (Trigger.isAfter && Trigger.isUPDATE) {
        system.debug('====AFTER UPDATE====');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes
        system.debug('trigger.oldMap -> ' + trgnoldMap);//yes
    }*/




  /*  if (Trigger.isBefore && Trigger.isinsert) {
        system.debug('trigger.new in BEFORE INSERT -->  ' + trigger.new); //.new is present. ID is null.
    }
    if (Trigger.isAfter && Trigger.isinsert) {
        system.debug('trigger.new in AFTER INSERT -->  ' + trigger.new); //yes ID prezent . 
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger.new in BEFORE Update -->  ' + trigger.new);//yes
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('trigger.new in AFTER Update -->  ' + trigger.new);//yes
    }
    system.debug('===== trigger end =====');

  /*  List<Account> newAccount = trigger.new;

    if (trigger.isAfter) {
        system.debug( 'new record printed===>'+newAccount);
        system.debug( 'numberOf rcords inserted/updated: '+newAccount.size());
        
        for (Account eachAcc : newaccount) {
            system.debug('new acc id is  '+ eachAcc.Id+ 'new acc name is  '+ eachAcc.Name);
            
        }
    }*/


  
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