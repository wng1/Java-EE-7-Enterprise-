import java.io.*;
import java.net.*;

public class conn
{

public static void main(String[] args)
{
try
URL n = new URL(args[0]); //open the URLConnection for reading
URLConnection uc = n.openConnection(); //access to the HTTP header

try (InputStream in = uc.getInputStream())
{
InputStream buffer = new BufferedInputStream(in);

Reader r = new InputStreamReader(buffer);

int c;
while ((c = r.read()) != -1)
{
  System.out.println((char) c;
}
} catch (MalformedURLException ex)
{
  System.err.println(ex)
}
}

}
