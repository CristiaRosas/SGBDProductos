package org.cristianrosas.webapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Productos")
public class Producto {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ProductoId;
    private String nombreProducto;
    private String marcaProducto;
    private String descripcionProducto;

    public int getProductoId() {
        return ProductoId;
    }

    public void setProductoId(int ProductoId) {
        this.ProductoId = ProductoId;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getMarcaProducto() {
        return marcaProducto;
    }

    public void setMarcaProducto(String marcaProducto) {
        this.marcaProducto = marcaProducto;
    }

    public String getDescripcionProducto() {
        return descripcionProducto;
    }

    public void setDescripcionProducto(String descripcionProducto) {
        this.descripcionProducto = descripcionProducto;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    @Column(name="Precio")
    private double precio;

    public Producto() {
    }

    public Producto(int ProductoId, String nombreProducto, String marcaProducto, String descripcionProducto, double precio) {
        this.ProductoId = ProductoId;
        this.nombreProducto = nombreProducto;
        this.marcaProducto = marcaProducto;
        this.descripcionProducto = descripcionProducto;
        this.precio = precio;
    }

    public Producto(String nombreProducto, String marcaProducto, String descripcionProducto, double precio) {
        this.nombreProducto = nombreProducto;
        this.marcaProducto = marcaProducto;
        this.descripcionProducto = descripcionProducto;
        this.precio = precio;
    }
    
    
    
    
    
}
