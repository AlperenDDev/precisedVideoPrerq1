MapDemo.MapExample();

map<string, string> mapCC = new Map<String,String>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Germany', 'Euro');
mapCC.put('Mexico', 'Peso');
mapCC.put('Turkey', 'Lira');
mapCC.put('El salvador', 'Bitcoin');
system.debug(mapCC);

string curr1 = mapCC.get('France');
string curr2 = mapCC.get('El salvador');

system.debug('France currencey is ' + curr1);
system.debug('El salvador currency is ' + curr2);

string country1 = 'USA';
string curr3 = mapCC.get(country1);
system.debug(country1 + 'currency is ' + curr3);

set<string> allCountry = mapCC.keySet();
system.debug('all countries are ' + allCountry);

list<string> allCurrencies = mapCC.values();
system.debug('all currencies are ' + allCurrencies);

set <string> allCountries = mapCC.keySet();

for (string eachCountry : allCountries){
    string eachCurrency = mapCC.get(eachCountry);

    system.debug('Country is  ' + eachCountry + 'its currency is ' + eachCurrency);
}