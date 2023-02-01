list<integer> listInteger =new list <integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
Set<Integer>sint =setDemo.setFromList(listInteger);
system.debug ('set is : '+sint);




setDemo.randomIntegerSet();
setDemo.citySet();

  Set<String> cityes =new Set<String>();
    cityes.add('Tokyo');
    cityes.add('Lisbon');
    cityes.add('Berlin');
    cityes.add('Nairobi');
    cityes.add('Tokyo');
    cityes.add('BERLIN');
    cityes.add('Nairobi');

    Set<String> capCities = setDemo.UpperCaseSet(cityes);
    system.debug(capCities);