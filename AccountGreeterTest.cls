@IsTest
private class AccountGreeterTest {

    @IsTest
    static void returnsGreetingForAccount() {
        Account acc = new Account(Name = 'Test Account');

        Test.startTest();
        String result = AccountGreeter.getGreeting(acc);
        Test.stopTest();

        System.assertEquals('Hello', result, 'Expected the standard greeting');
    }

    @IsTest
    static void returnsGreetingForNullAccount() {
        String result = AccountGreeter.getGreeting(null);

        System.assertEquals('Hello', result, 'Expected the greeting even when the account is null');
    }
}
