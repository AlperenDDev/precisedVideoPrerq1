public class MarksDemo {
    public Map<String, Integer> marksObtainInMaths;

    public MarksDemo() {
        marksObtainInMaths = new Map<String, Integer>();
        marksObtainInMaths.put('0111CE112', 40);
        marksObtainInMaths.put('0111CE102', 19);
        marksObtainInMaths.put('0111CE100', 33);
        marksObtainInMaths.put('0111CE098', 40);
    }

    public void addMappings() {
        marksObtainInMaths.put('0111CE120', 47);
        marksObtainInMaths.put('0111CE130', 15);
    }

    public void printRollNumbers() {
        System.debug('Student Roll Numbers: ' + marksObtainInMaths.keySet());
    }

    public void printMarksObtained() {
        System.debug('Marks Obtained: ' + marksObtainInMaths.values());
    }

    public void processQualification() {
        Set<String> uniqueRollNumberSet = new Set<String>(marksObtainInMaths.keySet());

        List<Integer> marksObtainList = new List<Integer>(marksObtainInMaths.values());

        for (String rollNumber : uniqueRollNumberSet) {
            marksObtainList.add(marksObtainInMaths.get(rollNumber));
        }

        for (String rollNumber : uniqueRollNumberSet) {
            Integer marks = marksObtainInMaths.get(rollNumber);
            if (marks < 20) {
                System.debug(rollNumber + ' is not qualified for the next class');
            }
        }
    }
}