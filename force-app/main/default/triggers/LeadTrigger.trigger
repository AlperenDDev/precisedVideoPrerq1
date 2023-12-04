trigger LeadTrigger on Lead (before insert, before update) {
    List<lead> leadList = Trigger.new;
    if (Trigger.isBefore && Trigger.isInsert) {
        for (Lead eachLead : leadList) {
            System.debug('each Lead ' + eachLead);
        }
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        for (Lead eachLead : leadList) {
            system.debug('eachLead ID is '+ eachLead.Id + 'name ' + eachLead.Name + 'Description ' + eachLead.Description);
        }
    }
}