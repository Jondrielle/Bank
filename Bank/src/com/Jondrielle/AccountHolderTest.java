package com.Jondrielle;

import org.junit.Test;

import static junit.framework.TestCase.assertEquals;

public class AccountHolderTest {

    AccountHolder holder = new AccountHolder("jdons","jodnsds");

    /**
     * This test checks if the amount the user wants to deposit is displaying in the users bank account correctly
     */
    @Test
    public void deposit(){
        holder.deposit(50);
        assertEquals(50,holder.getBalance());
    }

    /**
     * This test checks that the amount being deposited is not a negative number. If it is a negative
     * amount then a message will be printed on the console.
     */
    @Test
    public void depositNotNegative(){
        assertEquals(0,holder.deposit(-2));
    }

    /**
     * This test checks whether a holder deposits more than the amount that they have in their bank account
     */
    @Test
    public void withdrawalExceededDeposit(){
        holder.withdrawal(30);
        assertEquals(-35,holder.getOverdraftFee());
    }

}
