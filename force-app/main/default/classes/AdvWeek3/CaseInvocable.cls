public with sharing class CaseInvocable {
    @InvocableMethod(label='Send Email and save as activity'
    description='This method sends an email and save the same as activity'
    category='My Case')
    public static void sendEmailAndSaveActivity(list<CaseRequest> requestInputs) {
        List<Messaging.SingleEmailMessage> msgs = new List<Messaging.SingleEmailMessage>();
        for (CaseRequest req : requestInputs) {
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            msg.setSubject('case created' + req.caseNumber);
            msg.setPlainTextBody('hello there, \n'
            + 'A case has been created for your query. Our customer representitives are going to look at it shortly. \n\n'
            + 'Thnak you, \n'
            + 'Salesforce'
            );
            msg.setTargetObjectId(req.contactId);
            msg.setSaveAsActivity(true);
        }

        try {
            Messaging.sendEmail(req.contactId);
            msg.setSaveAsActivity(true);
        } catch (Exception ex) {
            system.debug(ex.getMessage());
        }
    }
    public class CaseRequest{
        @InvocableVariable(label='Case Number' description='Case Number' required=true)
        public string caseNumber;
        @InvocableVariable(label='Contact Id' description='Contact Id' required=true)
        public Id contactId;
    }
}