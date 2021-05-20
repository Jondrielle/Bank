package com.Jondrielle;

import org.junit.Test;
import org.junit.runner.JUnitCore;
import static junit.framework.TestCase.assertEquals;

    public class CalculatorTest {

        Calculator myCalculator = new Calculator();

        @Test
        public void addition() {
            assertEquals(7,myCalculator.addition(2,5));
        }

        @Test
        public void subtraction() {
            assertEquals(0,myCalculator.subtraction(0,0));
        }

        @Test
        public void multiplication() {
            assertEquals(-2,myCalculator.multiplication(2,-1));
        }

        @Test
        public void division() {
            assertEquals(1,myCalculator.division(1,1));
        }

        @Test
        public void exponent() {
            assertEquals(1,myCalculator.exponent(2,0));
        }
    }
