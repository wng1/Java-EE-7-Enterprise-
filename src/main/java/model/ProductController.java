import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;

@Named
@RequestScoped

public class ProductController
{
@Inject
private ProductBean pdBean;
private Product p = new Product();

public String createNewProduct()
{
pdBean.createProduct(p) // use the method in the Product class
FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Product created");
return "newProduct.xhtml";

//  return the instance for the request proccessed by the current thread. 

}



}
