Candidates.companyName = 'Softinnovas';

System.debug('0.company name'+ Candidates.companyName);
system.debug('start count candidates => ' + Candidates.countCandidates );

Candidates c1 =new Candidates();
Candidates.countCandidates++;
c1.name= 'Jerry';
c1.gender='Male';
c1.printCanditate();

Candidates c2 =new Candidates();
Candidates.countCandidates++;
c2.name= 'Elaine';
c2.gender='Female';
c2.printCanditate();

Candidates c3 =new Candidates();
Candidates.countCandidates++;
c3.name= 'George';
c3.gender='Male';
c3.printCanditate();


system.debug('end count candidates => ' + Candidates.countCandidates);
