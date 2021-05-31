package com.Jondrielle;

import java.util.HashMap;

public class AccountHolder {
    private HashMap<String,String> accountHolders = new HashMap<>();
    private String holderUser;
    private String holderPassword;
    private long balance;
    private long overdraftFee;

    public AccountHolder(String holderUser, String holderPassword, long balance) {
        this.holderUser = holderUser;
        this.holderPassword = holderPassword;
        addUserToAccountHolder(holderUser,holderPassword);
        this.balance = balance;
    }

    public AccountHolder(String holderUser, String holderPassword) {
        this.holderUser = holderUser;
        this.holderPassword = holderPassword;
        addUserToAccountHolder(holderUser,holderPassword);
        this.balance = 0;
    }

    /**
     * This method checks whether or not a user is in the system already.
     * @param userName - username login for user
     * @param password - password login for user
     */
    public void addUserToAccountHolder(String userName, String password){
        if(accountHolders.containsKey(userName)){
            System.out.println("Thanks for coming back to The Bank of Jondrielle");
        }
        else {
            accountHolders.put(userName,password);
            System.out.println("Thanks for joining The Bank of Jondrielle");
        }
    }

    /**
     * This method returns how much the user is depositing within their account
     * @param amountDeposit - This is the amount the user is depositing within their account
     * @return amount being deposited to the balance
     */
    public long deposit(long amountDeposit){
        if(amountDeposit > 0) {
            if (getOverdraftFee() < 0 && getOverdraftFee() <= amountDeposit) {
                System.out.println("Overdraft fee is : " + getOverdraftFee());
                amountDeposit = amountDeposit + getOverdraftFee();
                setOverdraftFee(amountDeposit);
            } else if (getOverdraftFee() < 0 && getOverdraftFee() > amountDeposit)
                amountDeposit = amountDeposit - overdraftFee;
        }
        else{
            System.out.println("You can not deposit a negative amount into your bank account!");
            amountDeposit = 0;
        }
        setBalance(this.balance + amountDeposit);
        return this.balance + amountDeposit;
    }

    /**
     * This method withdraws money from the users account
     * @param amountWithdrawal - This is the amount the user is going to withdraw from their account
     * @return amount being withdrawn from the account balance
     */
    public long withdrawal(long amountWithdrawal){
        if(amountWithdrawal > getBalance()) {
            overdraftFee = overdraftFee - 35;
            System.out.println("You do not have enough money in your bank account! You have incurred an overdraft fee of $35.");
        }
        setBalance(this.balance - amountWithdrawal);
        System.out.println("Overdraft fee currently: " + Math.abs(getOverdraftFee()));
        return this.balance - amountWithdrawal;
    }

    public String getHolderUser() {
        System.out.print("Username: ");
        return holderUser;
    }

    public void setHolderUser(String holderUser) {
        System.out.println("Username was reset.");
        this.holderUser = holderUser;
    }

    public String getHolderPassword() {
        System.out.print("Password: ");
        return holderPassword;
    }

    public void setHolderPassword(String holderPassword) {
        System.out.println("Password was reset.");
        this.holderPassword = holderPassword;
    }
    public long getBalance() {
        if(balance < 0)
            return balance = 0;
        else
            return balance;
    }

    public void setBalance(long balance) {
        this.balance = balance;
    }

    public void setOverdraftFee(long overdraftFee) {
        this.overdraftFee = overdraftFee;
    }

    public long getOverdraftFee() {
        return overdraftFee;
    }
}
