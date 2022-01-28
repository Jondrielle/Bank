import java.net.*;
import java.io.*;
import java.util.ArrayList;

public class MyServer {
    private Socket socket = null;
    private ServerSocket server = null;
    private DataInputStream reader = null;
    public static ArrayList<ClientHandler> clients = new ArrayList<>();



    public MyServer(int port) {
        try {
            server = new ServerSocket(port);
            while (true) {
                socket = server.accept();
                ClientHandler handler = new ClientHandler(socket,null);
                clients.add(handler);
                handler.start();
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static class ClientHandler extends Thread {
        private static Socket socket;
        private BufferedReader reader;
        private DataOutputStream output;
        private PrintWriter out;
        private String userName;
        private DataInputStream input;


        public ClientHandler(Socket socket,String userName) {
            this.socket = socket;
            this.userName = null;
        }

        public void run() {
            try {
                out = new PrintWriter(socket.getOutputStream(),true);
                output =new DataOutputStream(socket.getOutputStream());
                input = new DataInputStream(socket.getInputStream());
                reader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                String line = "";
                while (!line.equals("Bye")) {
                    line = input.readUTF();
                    if (userName == null) {
                        setUserName(line);
                        userName = line;
                        String greeting = ("Welcome: " + userName);
                        System.out.println(greeting);
                        broadcastMessage(greeting);
                    } else {
                        String toAllMessage = userName + ": " + line;
                        System.out.println(toAllMessage);
                        broadcastMessage(toAllMessage);
                    }
                    if (line.equals("AllUsers")) {
                        printThreadList();
                    }
                }
                System.out.println(userName + " disconnected with a Bye message");
                broadcastMessage(userName + " disconnected with a Bye message");
                System.out.println("Server: Goodbye " + userName);
                broadcastMessage("Server: Goodbye " + userName);
                clients.remove(this);
                socket.close();
                input.close();
            } catch (IOException e) {
                System.out.println(e.getStackTrace());
            }

        }

        private void broadcastMessage(String toAllMessage) throws IOException {
            for (int i = 0; i < clients.size(); i++) {
                (clients.get(i)).out.println(toAllMessage);
            }
        }

        public void printThreadList() throws IOException {
            for (int i = 0; i < clients.size(); i++) {
                int j = i + 1;
                String clientThreadName = j + ") " + (clients.get(i)).getUserName();
                System.out.println(clientThreadName);
                broadcastMessage(clientThreadName);
            }
        }


        public void setUserName(String clientUserName){
            this.userName = clientUserName;
        }
        public String getUserName(){
            return userName;
        }
    }

    public static void main(String[] args) throws IOException {
        MyServer server = new MyServer(4000);
    }
}




