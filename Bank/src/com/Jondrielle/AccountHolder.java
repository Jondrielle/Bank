package com.Jondrielle;

import java.util.HashMap;

public class AccountHolder {
    private HashMap<String,String> accountHolders = new HashMap<>();
    private String holderUser;
    private String holderPassword;

    public AccountHolder(String holderUser, String holderPassword) {
        this.holderUser = holderUser;
        this.holderPassword = holderPassword;
    }

    public void addUserToAccountHolder(String userName, String password){
        if(accountHolders.containsKey(userName)){
            System.out.println("This username is already taken.Try a different username.");
        }
        else {
            accountHolders.put(userName, password);
        }

    }

    public String getHolderUser() {
        return holderUser;
    }

    public void setHolderUser(String holderUser) {
        this.holderUser = holderUser;
    }

    public String getHolderPassword() {
        return holderPassword;
    }

    public void setHolderPassword(String holderPassword) {
        this.holderPassword = holderPassword;
    }
}
