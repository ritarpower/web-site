package com.example.testweb.repository;

import com.example.testweb.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static final List<Product> products = new ArrayList<>();
    private static int lastId;

    static {
        products.add(new Product(1, "Iphone 16", 2000));
        products.add(new Product(2, "Samsung", 1000));
        products.add(new Product(3, "Oppo Reno", 500));
        lastId = 3;
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void addProduct(Product product) {
        lastId++;
        product.setId(lastId);
        products.add(product);
    }

    @Override
    public Product findProduct(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    @Override
    public void updateProduct(int id, Product product) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                products.get(i).setId(product.getId());
                products.get(i).setName(product.getName());
                products.get(i).setPrice(product.getPrice());
                return;
            }
        }
    }

    @Override
    public void deleteProduct(int id) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                products.remove(i);
                return;
            }
        }
    }
}
