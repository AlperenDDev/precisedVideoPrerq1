public class SoqlDemo3 {
    public static void childToParentQuery() {

        string filter = 'energy';

       list<contact> listCon = [select id, name, account.name, account.industry from contact where account.industry = :filter];

       for(contact eachContact : listCon){
        system.debug('contact name is ' + eachContact.name);
        system.debug('ac name is ' + eachContact.Account.name + 'acc industry is ' + eachContact.account.Industry);
        system.debug('-------');
       }

    }

    public static void parentToChildQuery() {
        list<department__c> lisDept = [select id , name, name__c, (select first_name__c, country__c, salary__c from Employees__r) from department__c];

        for(Department__c eachDept : lisDept) {
            system.debug('dept name is ' + eachDept.name__c);
            list<employee__c> listEmp = eachDept.Employees__r;
            decimal deptSalary = 0;
            for(Employee__c eachEmp : listEmp){
                system.debug('---emp name is ' + eachEmp.first_name__c);
                system.debug('----emp salary and country is ' + eachEmp.salary__c + '--' + eachEmp.country__c);
                deptSalary += eachEmp.salary__c; 
                system.debug('** total depart salary is '+ deptSalary);
            }     
           
        }
    }
}