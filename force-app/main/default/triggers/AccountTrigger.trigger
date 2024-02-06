trigger AccountTrigger on Account (before insert,after insert, before update, after update) {
   if(Trigger.isBefore && Trigger.isInsert){
    system.debug('before insert account trigger called');
   }

   if(Trigger.isAfter && Trigger.isInsert){
    system.debug('after insert account trigger called');
   }

   if(Trigger.isBefore && Trigger.isUpdate){
    system.debug('before update account trigger called');
   }

   if(Trigger.isAfter && Trigger.isUpdate){
    system.debug('after update account called');
   }
   
    /* if(trigger.isBefore){
        system.debug('before insert acount trigger called ');
    }

    if(trigger.isAfter){
        system.debug('after insert acount trigger called');
    }

    if(trigger.isBefore){
        system.debug('before update acount trigger called ');
    }
   
    if(trigger.isBefore){
        system.debug('before update acount trigger called ');
    }*/
}