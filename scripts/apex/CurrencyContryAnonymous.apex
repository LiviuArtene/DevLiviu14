Map<String, String> mapContryCurrency =new Map<String, String>();
mapContryCurrency.put('USA', 'Dollar');
mapContryCurrency.put('France ', 'Euro');
mapContryCurrency.put('Poland', 'Euro');
mapContryCurrency.put('India', 'Rupees');
mapContryCurrency.put('India', 'Rupee');
mapContryCurrency.put('Turkiye', 'Lira');
mapContryCurrency.put('El Salvadore', 'Bitcoin');
mapContryCurrency.put('Romania', 'Leu');
system.debug('Map Of country and its currency ===>  '+mapContryCurrency);

string IndiaCurrency =mapContryCurrency.get('India');
string TurkiyeCurrency = mapContryCurrency.get('Turkiye');
String romaniaCurrency = mapContryCurrency.get('Romania');
System.debug('India currency  => '+ IndiaCurrency);
System.debug('Turkiye currency =>  '+ TurkiyeCurrency);
System.debug('Roamnia currency => '+ romaniaCurrency);

Set<String> countrySet =mapContryCurrency.keySet();
System.debug('country'+ countrySet); 

List<String> currencies = mapContryCurrency.values();
System.debug('Currency is '+currencies);



Set<String> countrySert= mapContryCurrency.keySet();
for(string eachkey: countrySert){
    String printstring = 'country is '+ eachkey;

    string eachValue = mapContryCurrency.get(eachkey);
    system.debug(printstring);
    }