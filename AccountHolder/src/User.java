import java.util.HashMap;
import java.util.Random;
public class User {
    private String userName;
    private String password;
    private HashMap<String,String> accountHolders = new HashMap<>();

    public User(String userName,String password) {
        this.userName = userName;
        this.password = password;
        accountHolders.put(userName,password);
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void createAccount() {
        System.out.println("We will give you your account number and routing number");
        AccountHolder accountHolder = new AccountHolder();
        accountHolder.verification(userName,password);
    }


}
