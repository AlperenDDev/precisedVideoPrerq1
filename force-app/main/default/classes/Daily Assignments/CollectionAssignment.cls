public class CollectionAssignment {
    public Set<String> countriesSet = new Set<String>{'India', 'USA', 'Russia', 'Germany', 'Singapore', 'Japan'};
    
    public void printLowercase() {
        List<String> lowercaseList = new List<String>();
        for (String country : countriesSet) {
            lowercaseList.add(country.toLowerCase());
        }
        System.debug('Lowercase List: ' + lowercaseList);
    }
    
    public void printUppercase() {
        List<String> uppercaseList = new List<String>();
        for (String country : countriesSet) {
            uppercaseList.add(country.toUpperCase());
        }
        System.debug('Uppercase List: ' + uppercaseList);
    }
}