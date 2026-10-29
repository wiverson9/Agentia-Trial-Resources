@isTest
private class MySimpleClassTest {
@isTest static void testMorningGreeting() {
String result = MySimpleClass.getGreeting(true);
System.assertEquals('Good morning', result);
}
}
