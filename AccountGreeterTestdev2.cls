@IsTest
private class AccountGreeterTestdev2 {

    @IsTest
    static void returnsGreetingForAccount() {
        Account acc = new Account(Name = 'Test Account');

        Test.startTest();
        String result = AccountGreeterdev2.getGreeting(acc);
        Test.stopTest();

        System.assertEquals('Greetings', result, 'Expected the greeting text');
    }

    @IsTest
    static void returnsGreetingForNullAccount() {
        Test.startTest();
        String result = AccountGreeterdev2.getGreeting(null);
        Test.stopTest();

        System.assertEquals('Greetings', result, 'Null account should still return the greeting');
    }
}
