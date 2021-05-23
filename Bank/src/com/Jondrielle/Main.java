package com.Jondrielle;

import java.sql.SQLOutput;
import java.util.Scanner;

public class Main {

    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        mainMenuOptions();
    }

    public static void mainMenuOptions(){
        System.out.println("Hello welcome to Bank of Jondrielle!\n" +
                "Enter 1 if you wish to login\n" +
                "Enter 2 for creating an account");

        int inputChoice = scanner.nextInt();

        switch(inputChoice){
            case 1:
                System.out.println("Enter userName and password.");
                String userName = scanner.next();
                String password = scanner.next();
                AccountHolder holder = new AccountHolder(userName,password);
                moreOptions();
                break;
            case 2:
                System.out.println("Lets get you signed up!");
                System.out.println("Enter a userName and password.");
                String newUser = scanner.next();
                String newUserPassword = scanner.next();
                AccountHolder newHolder = new AccountHolder(newUser,newUserPassword);
                break;
            default:
                System.out.println("This is not a valid option. Please try again.");
        }
    }

    /**
     * This method allows the user to determine what they want after they login to The Bank of Jondrielle.
     */
    public static void moreOptions(){
        int choice = scanner.nextInt();
        System.out.println("Hello, how can I help you today?\n Enter 1 Reset Username\n Enter 2 Reset Password\n " +
                "Enter 3 Checking Account Balance\n Enter 4 Withdrawl\n Enter 5 Deposit to Account\n Enter 6 Open New Account");

        switch(choice){
            case 1:
                resetUsername();
                System.out.println("Username was reset.");
                break;
            case 2:
                resetPassword();
                System.out.println("Password was reset.");
                break;
            case 3:
                System.out.println("Your balance is: ");
                break;
            case 4:
                System.out.println("You have withdrawn ");
                break;
            case 5:
                System.out.println("You have deposited ");
            case 6:
                System.out.println("You have opened a new Account ");
        }
    }

    /**
     * This method allows the user to reset their password.
     */
    public static void resetPassword(){
        System.out.println("Please enter your new password.\n New password: ");
        String newUserPassword = scanner.next();
    }

    /**
     * This method allows the user to reset their username.
     */
    public static void resetUsername(){
        System.out.println("Please enter your new userName.\n New username: ");
        String newUser = scanner.next();
    }
}
