package com.example.testweb.service;

import com.example.testweb.model.Product;
import com.example.testweb.repository.IProductRepository;
import com.example.testweb.repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
    private final IProductRepository productRepository = new ProductRepository();
    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void addProduct(Product product) {
        productRepository.addProduct(product);
    }

    @Override
    public Product findProduct(int id) {
        return productRepository.findProduct(id);
    }

    @Override
    public void updateProduct(int id, Product product) {
        productRepository.updateProduct(id, product);
    }

    @Override
    public void deleteProduct(int id) {
        productRepository.deleteProduct(id);
    }
}
