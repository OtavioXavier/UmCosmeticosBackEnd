package com.umcosmeticos.umcosmeticos.repositorys;

import com.umcosmeticos.umcosmeticos.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
