package com.umcosmeticos.umcosmeticos.controllers;

import com.umcosmeticos.umcosmeticos.dto.ProductDTO;
import com.umcosmeticos.umcosmeticos.entities.Product;
import com.umcosmeticos.umcosmeticos.repositorys.ProductRepository;
import com.umcosmeticos.umcosmeticos.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping(value = "/products")
public class ProductController {

    @Autowired
    private ProductService service;

    @GetMapping(value = "/{id}")
    public ProductDTO findById(@PathVariable Long id) {
      return service.findById(id);
    }
}
