import java.util.logging.Level;
import java.util.logging.Logger;

public class Cart 
{

public static final Logger logger = Logger.getLogger("appname.class.getName"); 

public synchronized void emptyCart()
{
logger.log(Level.INFO, "Emptying cart.");
// further implementation
}


}
