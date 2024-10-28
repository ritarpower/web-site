package com.example.testweb.repository;

import com.example.testweb.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();

    void addProduct(Product product);

    Product findProduct(int id);

    void updateProduct(int id, Product product);

    void deleteProduct(int id);
}
