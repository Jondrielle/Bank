import java.math.BigInteger;
import java.util.HashMap;
import java.util.Random;


public class AccountHolder{
    private String password;
    private String userName;

    private BigInteger max = new BigInteger("999999999999");
    private BigInteger min = new BigInteger("000000000000");
    private BigInteger maxLength = max.subtract(min);
    private Random randomAccountNumb = new Random();
    private BigInteger result = new BigInteger(max.bitLength(), randomAccountNumb);

    private HashMap<String,String> accountHolders = new HashMap<>();

    AccountHolder(){
        while( result.compareTo(max) >= 0 ) {
            result = new BigInteger(max.bitLength(), randomAccountNumb);
        }
    }

    public void accountHistory(){
        System.out.println("\tAccount History");
        System.out.println("***************************************");
    }

    public Random getAccountNumber() {
        return randomAccountNumb;
    }

    public void verification(String userName, String password) {
        if(accountHolders.containsValue(password) && accountHolders.containsKey(userName)){
            System.out.println("Welcome to Bank of Jondrielle");
        }
    }
}
