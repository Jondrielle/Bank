package com.Jondrielle;

public class BinarySearchTree {
    private Node root;
    private Node current;

    public BinarySearchTree(){
        this.root = null;
    }

    public void insertNode(int value){
        Node nodeInserted = new Node(value);
        if(root == null) {
            root = nodeInserted;
            current = root;
        }
        else if(current.nodeData > nodeInserted.nodeData)
            current.leftNode = nodeInserted;
        else if(root.nodeData < nodeInserted.nodeData)
            current.rightNode = nodeInserted;
        current.toString();
    }


    public class Node {
      private Node leftNode;
      private Node rightNode;
      private int nodeData;

        public Node(int value){
            this.nodeData = value;
            leftNode = null;
            rightNode = null;
        }
    }
}
