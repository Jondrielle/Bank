package com.Jondrielle;
/**
 * This Calculator class is to demostrate basic functions of a calculator.
 *
 * @author Jondrielle
 */

public class Calculator {

    /**
     *
     * @param number - First value passed into addition method
     * @param number2 - Second value passed into addition method
     * @return sum of both parameters
     */
    public int addition(int number,int number2){
        return number + number2;
    }

    /**
     *
     * @param number - First value passed into subtraction method
     * @param number2 - Second value passed into subtraction method
     * @return difference of both parameters
     */
    public int subtraction(int number,int number2){
        return number - number2;
    }

    /**
     *
     * @param number - First value passed into multiplication method
     * @param number2 - Second value passed into multiplication method
     * @return product of both parameters
     */
    public int multiplication(int number,int number2){
        return number * number2;
    }

    /**
     *
     * @param number - First value passed into division method
     * @param number2 - Second value passed into division method
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
     * @param number - First value passed into exponent method
     * @param number2 - Second value is the exponent
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
