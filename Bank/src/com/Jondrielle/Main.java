package com.Jondrielle;

import java.util.Scanner;

public class Main {

    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        mainMenuOptions();
    }

    public static <Login> void mainMenuOptions(){
        System.out.println("Hello welcome to Bank of Jondrielle!\n" +
                "Enter 1 if you wish to login\n" +
                "Enter 2 for creating an account");

        int inputChoice = scanner.nextInt();

        switch(inputChoice){
            case 1:
                System.out.println("Enter userName and password.");
                String userName = scanner.next();
                String password = scanner.next();
                userLogin login = new userLogin(userName,password);
                break;
            case 2:
                System.out.println("Lets get you signed up!");
                System.out.println("Enter a userName and password.");
                String newUser = scanner.next();
                String newUserPassword = scanner.next();
                newUser user = new newUser(newUser,newUserPassword);
                user.createAccount();
                break;
            default:
                System.out.println("This is not a valid option. Please try again.");
        }
    }
}
