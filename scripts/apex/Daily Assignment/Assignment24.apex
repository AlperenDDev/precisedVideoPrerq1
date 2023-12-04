List<Lead> leadToInsertList = new list<lead> ();
leadToInsertList.add(new Lead(LastName = 'lead1', Company = 'Salesforce'));
leadToInsertList.add(new Lead(LastName = 'lead2', Company = 'Salesforce'));
leadToInsertList.add(new Lead(LastName = 'lead3', Company = 'Salesforce'));
leadToInsertList.add(new Lead(LastName = 'lead4', Company = 'Salesforce'));
leadToInsertList.add(new Lead(LastName = 'lead5', Company = 'Salesforce'));
insert leadToInsertList;

for (Lead eachLead : leadToInsertList) {
    eachLead.Description = 'field updated by anon';
}

update leadToInsertList;