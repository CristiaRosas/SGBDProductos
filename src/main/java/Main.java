
import jakarta.persistence.EntityManager;
import java.util.List;
import org.cristianrosas.webapp.model.Producto;
import org.cristianrosas.webapp.util.JpaUtil;

public class Main {

    private static EntityManager em = JpaUtil.getEntityManager();

    public static void main(String[] args) {
        List<Producto> productos = em.createQuery("SELECT p FROM Producto p", Producto.class).getResultList();
        productos.forEach(producto -> System.out.println(producto));

    }
}