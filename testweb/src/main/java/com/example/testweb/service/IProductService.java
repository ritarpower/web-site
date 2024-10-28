package com.example.testweb.service;

import com.example.testweb.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    void addProduct(Product product);

    Product findProduct(int id);

    void updateProduct(int id, Product product);

    void deleteProduct(int id);
}
