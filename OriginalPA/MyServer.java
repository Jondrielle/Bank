import java.net.*;
import java.io.*;
import java.util.ArrayList;

public class MyServer{
    private Socket socket = null;
    private ServerSocket server = null;
    private DataInputStream in = null;


    public MyServer(int port) {
        try {
            server = new ServerSocket(port);
            while(true) {
                socket = server.accept();
                ClientHandler handler = new ClientHandler(socket);
                new Thread(handler).start();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
            }

    public static class ClientHandler extends Thread {
        private static Socket threadSocket;
        private DataInputStream in;
        public static ArrayList<String> threadList = new ArrayList<String>();

        public ClientHandler(Socket threadSocket) {
            this.threadSocket = threadSocket;
        }

        @Override
        public void run() {
            try {
                in = new DataInputStream(new BufferedInputStream(threadSocket.getInputStream()));
                String line = "";
                String userName = "";
                int count = 0;
                while (!line.equals("Bye")) {
                    // try {
                    if (line.equals("AllUsers")) {
                        printThreadList();
                    }
                    line = in.readUTF();
                    if (count < 1) {
                        System.out.println("Welcome " + line);
                        userName = line;
                        threadList.add(userName);
                        count++;
                    } else
                        System.out.printf("%s: %s \n", userName, line);
                }
                System.out.println(userName + " disconnected with a Bye message");
                System.out.println("Server: Goodbye " + userName);
                threadList.remove(userName);
                threadSocket.close();
                in.close();
            } catch (IOException e) {
                System.out.println(e.getStackTrace());
            }
        }

        private static void printThreadList() {
            System.out.println("AllUsers:");
            for (int i = 0; i < threadList.size(); i++) {
                int j = i + 1;
                System.out.println(j + ") " + threadList.get(i));
            }
        }
    }

    public static void main(String[] args) throws IOException {
        MyServer server = new MyServer(4000);
    }
}


