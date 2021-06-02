package com.Jondrielle;

import javax.swing.*;
import java.util.Scanner;

public class MainMenuOptions {
    static Scanner scanner = new Scanner(System.in);

    public static void mainMenuOptions() {
        try {
            JOptionPane.showMessageDialog(null,"Hello welcome to Bank of Jondrielle!");
            Thread.sleep(1000);
            System.out.println("Enter 1 if you wish to login\n" +
                    "Enter 2 for creating an account");

            int inputChoice = scanner.nextInt();
            switch (inputChoice) {
                case 1:
                    Thread.sleep(500);
                    String userName = JOptionPane.showInputDialog("Enter your username: ");
                    String password = JOptionPane.showInputDialog("Enter your password: ");
                    AccountHolder holder = new AccountHolder(userName, password);
                    moreOptions(holder);
                    break;
                case 2:
                    Thread.sleep(3000);
                    System.out.println("Lets get you signed up!");
                    Thread.sleep(1000);
                    String newUser = JOptionPane.showInputDialog("Enter your username: ");
                    String newUserPassword = JOptionPane.showInputDialog("Enter your password: ");
                    AccountHolder newHolder = new AccountHolder(newUser, newUserPassword);
                    moreOptions(newHolder);
                    break;
                default:
                    System.out.println("This is not a valid option. Please try again.");
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /**
     * This method allows the user to determine what they want after they login to The Bank of Jondrielle.
     */
    public static void moreOptions(AccountHolder holder) {
        boolean status = true;
        System.out.println("Hello, how can I help you today?");
        try {
            while (status) {
                Thread.sleep(2000);
                System.out.println("Enter 1: Reset Username\nEnter 2: Reset Password\nEnter 3: Checking Account Balance\n" +
                        "Enter 4: Withdrawl\nEnter 5: Deposit to Account\nEnter 6: Open New Account \nEnter 0: Log Out");
                int choice = scanner.nextInt();
                switch (choice) {
                    case 0:
                        status = false;
                        JOptionPane.showMessageDialog(null, "Have a good day! You are now logged out.");
                        break;
                    case 1:
                        String newUserName = JOptionPane.showInputDialog("Please enter a new username.");
                        holder.setHolderUser(newUserName);
                        JOptionPane.showMessageDialog(null, "This is your new username: " + holder.getHolderUser());
                        break;
                    case 2:
                        String newUserPassword = JOptionPane.showInputDialog("Please enter a new password.");
                        holder.setHolderPassword(newUserPassword);
                        JOptionPane.showMessageDialog(null,"This is your new password: " + holder.getHolderPassword());
                        break;
                    case 3:
                        long balanceInquiry = holder.getBalance();
                        JOptionPane.showMessageDialog(null,"Your balance is : " + balanceInquiry);
                        break;
                    case 4:
                        System.out.println("How much do you want to withdraw from your account? Please enter an amount. ");
                        long withdrawalAmount = scanner.nextLong();
                        holder.withdrawal(withdrawalAmount);
                        System.out.println("You have withdrawn " + withdrawalAmount + ".\nYour current balance is: " + holder.getBalance());
                        break;
                    case 5:
                        System.out.println("How much do you want to deposit from your account? Please enter an amount. ");
                        long depositAmount = scanner.nextLong();
                        holder.deposit(depositAmount);
                        System.out.println("You have deposited: " + depositAmount + ".\nYour current balance is: " + holder.getBalance());
                        break;
                    case 6:
                        System.out.println("You have opened a new Account ");
                        break;
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}