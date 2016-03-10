@Entity

public class Product
{

@Column(name = "PID", updateable = false, nullable = false)
private Long PID;

@Column(length = 30, nullable = false)
private String productName;

@Column(length = 300, nullable = false)
private String productDesc;


}
