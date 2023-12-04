list<employee__c> empList = SoqlAssignment1.topEmployee();
for(Employee__c eachEmp : empList){
    system.debug('employee is ' + eachEmp);
}

string mpCountry = SoqlAssignment1.mostPopulatedCountry();
system.debug('most populated country  ' +mpCountry);