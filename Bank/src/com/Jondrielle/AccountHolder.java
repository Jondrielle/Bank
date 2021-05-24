package com.Jondrielle;

import java.util.HashMap;

public class AccountHolder {
    private HashMap<String,String> accountHolders = new HashMap<>();
    private String holderUser;
    private String holderPassword;

    public AccountHolder(String holderUser, String holderPassword) {
        System.out.println("Inside constructor");
        this.holderUser = holderUser;
        this.holderPassword = holderPassword;
        addUserToAccountHolder(holderUser,holderPassword);
    }

    public void addUserToAccountHolder(String userName, String password){
        System.out.println("Inside addUser");
        if(accountHolders.containsKey(userName)){
            System.out.println("Thanks for coming back to The Bank of Jondrielle");
        }
        else {
            accountHolders.put(userName,password);
            System.out.println("Thanks for joining The Bank of Jondrielle");
        }
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
}
