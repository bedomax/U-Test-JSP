package interfaces;
import models.Product;

import java.util.List;

public interface Crud {
    public List list();
    public boolean add(Product producto);
}
