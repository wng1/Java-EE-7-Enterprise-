import java.net.*;
import java.io.*;

public class portListener
{
public static void main(String[] args) 
{
String host = "localhost";
for (int i = 8080; i < 8085; i++) {
try 
{
Socket s = new Socket(host, i);
System.out.println("There is a server on port " + i + "");
s.close();
} 
catch (UnknownHostException ex) 
{
System.err.println(ex);
break;
}
catch (IOException ex) 
{

System.out.println("No open ports");
}
}
}
}
