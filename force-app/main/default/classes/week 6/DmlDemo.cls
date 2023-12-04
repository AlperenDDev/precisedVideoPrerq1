public class DmlDemo {
    public static void dmlInsert1() {
        account acc = new Account();
        acc.name = 'salesforce';
        insert acc;
        system.debug(acc);
    }

    public static void dmlInsert2() {
        department__c d = new Department__c();

        d.Name__c = 'Homan Resource';
        d.Short_Code__c = 'HR';
        insert d;
    }

    public static void dmlupdate1() {
        account acc = new account();
        acc.name = 'softInnovas';
        system.debug('before insert dml : ' + acc);
        insert acc;
        system.debug('afer dml : '+ acc);
        acc.name = 'softinnovas inc.';
        update acc;
    }

    public static void dmlupdate2() {
        account acc = [select id, name from account order by CreatedDate desc limit 1];
        acc.name = 'salesforce inc';
        update acc;
        system.debug(acc);
    }

    public static void dmlupdate3() {
        Employee__c emp = [select id, country__c, first_name__c from employee__c where Country__c = 'USA' limit 1 ];
        emp.country__c = 'Canada';
        emp.first_name__c = 'Alexander';
        emp.Last_name__c = 'the great';
        system.debug('last name is ' + emp.last_name__c);
        update emp;
    }

    public static void dmlInsert3() {
        account acc = [select id, name from account order by CreatedDate desc limit 1];

        string accountname = acc.name;
        id accountid = acc.id;

        contact c = new contact ();
        c.lastName = 'biden';
        c.accountid = accountid;
        insert c;
    }
}