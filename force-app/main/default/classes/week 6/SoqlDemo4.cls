public class SoqlDemo4 {
    public static void aggregateQuery(){
        list<aggregateResult> results = [select country__c, count(id), sum(salary__c) from Employee__c group by country__c];

        for (aggregateResult ar : results){
            system.debug(ar);
            system.debug('country name is ' + ar.get('country__c'));
            system.debug('number of record:' + ar.get('expr0'));
            system.debug('sum of salary is ' + ar.get('expr1'));
        }
    }

     public static void accDynamicSoql1(string fieldNames) {
        string query = 'select';
        query = query + fieldNames;
        query += 'from account';

        system.debug('final query is '+ query);
        list<account> listAcc = database.query(query);
        for (account acc : listAcc){
            system.debug(acc);
        }
     }

     public static void empDynamicSoql(string empFields) {
        string q = 'select';
        q += empFields;
        q += ' from employee__c';

        system.debug('final query is ' + q);
        list<employee__c> listEmp = database.query(q);
        for (employee__c eachEmp : listEmp) {
            system.debug('employee ' + eachEmp);
        }
     }

     
}