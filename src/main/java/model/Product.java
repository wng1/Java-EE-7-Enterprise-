@Entity
@NamedQuery(name = Product.FIND_BY_PID, query = "SELECT PID FROM Product p")
public class Product
{

@Column(name = "PID", updateable = false, nullable = false)
private Long PID;

@Column(length = 30, nullable = false)
private String productName;

@Column(length = 300, nullable = false)
private String productDesc;

//Constructors
//Getters and setters methods
}
