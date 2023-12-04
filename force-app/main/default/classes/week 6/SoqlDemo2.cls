public class SoqlDemo2 {
    public static void projectSOQL1() {
        list<salesforce_project__c> sp = [select id, name, project_name__c, status__c from salesforce_project__c where status__c = 'new'];

        for(salesforce_project__c eachSP : sp){
            system.debug('project name is ' + eachSP.project_name__c + ', its status is ' + eachSP.status__c);
        }
    }

    public static void projectSOQL2(string status) {
        list<salesforce_project__c> sp = [select id, name, project_name__c, status__c from salesforce_project__c where status__c = :status];

        for(salesforce_project__c eachSP : sp){
            system.debug('project name is ' + eachSP.project_name__c + ', its status is ' + eachSP.status__c);
        }
    }

     
}