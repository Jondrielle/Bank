import java.net.*;
import java.io.*;
public class MyClient extends Thread {
    private Socket socket = null;
    private DataInputStream input = null;
    private DataOutputStream out = null;

    public MyClient(String address, int port) throws IOException {
        try {
            socket = new Socket(address, port);
            input = new DataInputStream(System.in);
            out = new DataOutputStream(socket.getOutputStream());
            String line = "";
            System.out.println("Enter the username: ");
            while (!line.equals("Bye")) {
                try {
                    line = input.readLine();
                    if (line.isEmpty() == true)
                        break;
                    out.writeUTF(line);
                } catch (IOException i) {
                    System.out.println(i);
                }
            }
            try {
                input.close();
                out.close();
                socket.close();
            } catch (IOException i) {
                System.out.println(i);
            }
        } catch (Exception e) {
            System.out.println("error " + e.getMessage());
        }
    }

    public static void main(String[] args) throws IOException {
        MyClient client = new MyClient("localhost",4000);
    }
}
