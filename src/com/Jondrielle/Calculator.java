package com.Jondrielle;

/**
 * This Calculator class is to demostrate basic functions of a calculator.
 *
 * @author Jondrielle
 */

public class Calculator {
    /**
     *
     * @param number
     * @param number2
     * @return sum of both parameters
     */
    public int addition(int number,int number2){
        return number + number2;
    }

    /**
     *
     * @param number
     * @param number2
     * @return difference of both parameters
     */
    public int subtraction(int number,int number2){
        return number - number2;
    }

    /**
     *
     * @param number
     * @param number2
     * @return product of both parameters
     */
    public int multiplication(int number,int number2){
        return number * number2;
    }

    /**
     *
     * @param number
     * @param number2
     * @return dividend of both parameters
     */
    public int division(int number,int number2){
        int dividend = 0;
        try{
            dividend = number/number2;
        }catch(ArithmeticException e){
            e.printStackTrace();
        }
        return dividend;
    }

    /**
     *
     * @param number
     * @param number2
     * @return power of both parameters
     */
    public int exponent(int number,int number2){
        int counter = 1;
        int power = 1;
        while (counter <= number2) {
            power = power * number;
            counter++;
        }
        return power;
    }
}
