package org.cristianrosas.webapp.service;

import jakarta.persistence.EntityManager;
import java.util.List;
import org.cristianrosas.webapp.model.Producto;
import org.cristianrosas.webapp.util.JPAUtil;


public class ProductoService implements IProductoService {
    
    private EntityManager em;
    
    public ProductoService(){
        this.em = JPAUtil.getEntityManager();
    }

    @Override
    public List<Producto> ListarProductos() {
        return em.createQuery("SEELCT p FROM Producto p", Producto.class).getResultList();
    }

    @Override
    public void agregarProducto(Producto producto) {
        em.persist(producto);
    }

    @Override
    public void eliminarProducto(int productoId) {
        
    }

    @Override
    public Producto buscarProductoId(int productoId) {
        Producto producto = null;
        return producto;
    }

    @Override
    public void editatProducto(Producto producto) {
       
    }
    
    
}
