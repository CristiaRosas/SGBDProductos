package org.cristianrosas.webapp.service;

import java.util.List;
import org.cristianrosas.webapp.model.Producto;


public interface IProductoService {
    public List<Producto> ListarProductos();
    
    public void agregarProducto(Producto producto);
    
    public void eliminarProducto(int productoId);
    
    public  Producto buscarProductoId(int productoId);
    
    public void editatProducto(Producto producto);
    
    
}
