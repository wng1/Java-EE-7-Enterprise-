
public class ManagerUser
{
private SessionFactory factory;

public static void main(String[] arg)
{
try 
{
factory = new Configuration().configure().buildSessionFactory();
} 
catch
(Throwable e)
{
System.out.println("The session object has failed")  //Temporary console output view
throw new ExceptionInInitializerError (e);
}

}
