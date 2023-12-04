public class DmlDemo2 {
    public static void employeeDept() {
        department__c d =[select id, name from department__c order by createddate DESC LIMIT 1];

        Employee__c emp1 = new Employee__c();
        emp1.First_Name__c = 'Dan';
        emp1.Last_Name__c = 'oman';
        emp1.JoinDate__c = date.newInstance(2023, 09, 29);
        emp1.Salary__c = 50000;
        emp1.Country__c = 'Mexico';
        emp1.Department__c = d.id;
        insert emp1;
    }

    public static void dmlRightDemo1() {
        list<account> listAcc = new list<account>();

        for (integer i=0 ; i<155; i++) {
            account ac = new account();

            ac.Name = 'test acc' + i;
            listAcc.add(ac);
        }
        insert listAcc;
    }

    public static void dmlBulkupdate1() {
        List<Account> allAcc = [select id from Account where CreatedDate = TODAY];

        for (Account eachAcc : allAcc) {
            eachAcc.Rating = 'Hot';
        }
        update allAcc;
    }

    public static void dmlBulkUpdateRight2() {
        List<Account> allAccounts = [select id, name from account];
        list<Account> updateRecords = new List<Account>();

        for (Account eachAccount : allAccounts) {
            if (eachAccount.active__c != 'Yes') {
                eachAccount.Description = 'inactive man ';
                updateRecords.add(eachAccount);
            }
        }
        update updateRecords;
    }
}