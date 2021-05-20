package com.Jondrielle;
import javax.swing.*;

public class Main {

    public static void main(String[] args) {
        JPanel panel = new JPanel();
        JFrame frame = new JFrame("Calculator");
        frame.setSize(350,300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
        frame.add(panel);

        panel.setLayout(null);

        JLabel number1Label = new JLabel("Value: ");
        JLabel number2Label = new JLabel("Value:");

        frame.add(number1Label);
        frame.add(number2Label);
//     Calculator myCalculator = new Calculator();
//     myCalculator.exponent(2,2);
    }
}

