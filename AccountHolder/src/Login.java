import java.util.HashMap;
import java.util.Scanner;

public class Login {
    private static Scanner scanner = new Scanner(System.in);
    private static String userName;
    private static String password;

    public static void main(String[] args){
        mainMenu();
    }

    public static void mainMenu(){
        System.out.println("Hello welcome to Bank of Jondrielle!\n" +
                "Enter 1 if you wish to login\n" +
                "Enter 2 for creating an account");

        int inputChoice = scanner.nextInt();
        System.out.println("Enter a username and password");
        userName = scanner.next();
        password = scanner.next();
        switch (inputChoice){
            case 1:
                String login = scanner.nextLine();
                User signUpUser = new User(userName,password);
                //signUpUser.verification(userName,password);
                break;
            case 2:
                User user = new User(userName,password);
                user.createAccount();
                break;
        }
    }
}
