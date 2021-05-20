package com.Jondrielle;

import java.util.HashMap;
import java.util.Random;

public class newUser {
    private String userName;
    private String password;

    public newUser(String userName, String password) {
        this.userName = userName;
        this.password = password;
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

    public void createAccount(){
        System.out.println("Here is your account number and routing number");
        AccountHolder holder = new AccountHolder(userName,password);

        //holder.addUserToAccountHolder();
    }
}
