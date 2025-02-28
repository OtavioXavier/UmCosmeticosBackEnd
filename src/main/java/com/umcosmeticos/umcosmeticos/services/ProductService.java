package com.umcosmeticos.umcosmeticos.services;

import com.umcosmeticos.umcosmeticos.dto.ProductDTO;
import com.umcosmeticos.umcosmeticos.entities.Product;
import com.umcosmeticos.umcosmeticos.repositorys.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class ProductService {

    @Autowired
    private ProductRepository repository;

    //Torna a transação mais rápida
    @Transactional(readOnly = true)
    public ProductDTO findById(Long id) {
        Optional<Product> result = repository.findById(id);
        Product product = result.get();

        ProductDTO productDTO = new ProductDTO(product);
        return productDTO;
    }

}
