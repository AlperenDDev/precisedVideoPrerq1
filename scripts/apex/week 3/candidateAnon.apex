Candidate.companyName = 'Softinnovas';

Candidate c1 = new Candidate();
c1.name = 'Jerry';
c1.gender = 'male';
c1.details();

Candidate c2 = new Candidate();
c2.name = 'George';
c2.gender = 'male';
c2.details();

Candidate c3 = new Candidate();
c3.name = 'Janet';
c3.gender = 'Female';
c3.details();

system.debug('company name is ' + Candidate.companyName);

Candidate.companyName = 'Salesforce'; 
system.debug('after change the company name is ' + Candidate.companyName);

c1.details();
c2.details();
c3.details();