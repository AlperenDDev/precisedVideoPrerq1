public with sharing class AccountInvocable {
   
    @InvocableMethod(label='Close Open opportunities'
    description='By receiving account id, it closes all the open opportunities'
    category='Account')
    
    public static void closeOpportunities(List<Id> accountIds){
         List<Opportunity> opps = [SELECT Id, StageName FROM Opportunity 
                                    WHERE StageName NOT IN ('Closed Won',  'Closed Lost') 
                                    AND AccountId IN: accountIds];
        if (!opps.isEmpty()) {
            for (Opportunity opp : opps) {
                opp.StageName = 'Closed Lost';
            }  
        }  
        try {
            update opps; 
        } catch (Exception ex) {
            System.debug(ex.getMessage());
        }
        
    }
}