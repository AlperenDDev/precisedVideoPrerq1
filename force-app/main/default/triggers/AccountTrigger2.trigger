trigger AccountTrigger2 on Account (before update, after update) {
    if(trigger.isBefore){
        system.debug('before update acount trigger called ');
    }
   
    if(trigger.isBefore){
        system.debug('before update acount trigger called ');
    }
   
}