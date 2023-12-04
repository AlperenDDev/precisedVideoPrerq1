public class ListExtra_Assignment {
    public static List<String> schoolsList(String medium) {
        List<String> allSchools = new List<String>{
            'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'
        };
        List<String> result = new List<String>();

        for (String school : allSchools) {
            if (school.containsIgnoreCase(medium)) {
                result.add(school);
            }
        }

        if (result.isEmpty()) {
            result.add('No schools found with medium: ' + medium);
        }

        return result;
    }
}