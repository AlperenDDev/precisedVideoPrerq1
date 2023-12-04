public class SoqlAssignment1 {
    public static list<employee__c> topEmployee() {
        list<employee__c> empList = [select id, first_name__c, salary__c from employee__c order by salary__c desc limit 5];
        return empList;
    }

    public static String mostPopulatedCountry() {
        AggregateResult result = [select country__c, COUNT(id) from employee__c group by country__c order by COUNT(id) desc limit 1];

        string mpCountry = string.valueOf(result.get('Country__c'));
        return mpCountry;
    }
}