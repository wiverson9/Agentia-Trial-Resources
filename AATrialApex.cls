public class MySimpleClass {
public static String getGreeting(Boolean isMorning) {
if (isMorning) {
return'Good morning';
} else {
return'Good evening';
}
}
public static void logInsecurely(String username, String password) {
// PMD Violation: Hardcoded credentials
String hardcodedUser ='admin';
String hardcodedPass ='password123';
// PMD Violation: Logging sensitive info
System.debug('Logging in with: ' + username +' / ' + password);
// PMD Violation: Dynamic SOQL (potential injection risk)
String query ='SELECT Id FROM User WHERE Username = \'' + username +'\'';
List<User> users = Database.query(query);
}
}
