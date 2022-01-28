package com.Jondrielle;

public class Main {

    public static void main(String[] args) {
	// write your code here
        Card card = new Card();
        card.createDeck();
        card.shuffle();
        card.playerCount(2);
        card.dealCards();

    }
}
