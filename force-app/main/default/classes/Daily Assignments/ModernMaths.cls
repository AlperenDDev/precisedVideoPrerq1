public  class ModernMaths {
    public static void printFactors(Integer Num) {
        list<integer> factors = new list<integer>();
        for (Integer i = 1; i <= Num; i++) {
            if (Math.mod(num, i) == 0) {
                factors.add(i);
            }
        }
        system.debug(factors);
    }
}