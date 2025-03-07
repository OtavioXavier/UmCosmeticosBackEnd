package com.umcosmeticos.umcosmeticos.dto;

import com.umcosmeticos.umcosmeticos.entities.Product;
import jakarta.validation.constraints.*;

public class ProductDTO {
    private Long id;
    @NotBlank(message = "Nome é requerido")
    @Size(min = 3, max = 80, message = "Nome deve ter entre 3 e 90 caracteres")
    private String name;
    @NotBlank(message = "Descrição é requerido")
    @Size(min = 10, message = "Descrição deve ter 10 ou mais caracteres")
    private String description;
    @Positive(message = "O preço deve ser positivo")
    private double price;
    private String imgUrl;

    public ProductDTO() {
    }

    public ProductDTO(Long id, String name, String description, double price, String imgUrl) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.imgUrl = imgUrl;
    }

    public ProductDTO(Product entity) {
        id = entity.getId();
        name = entity.getName();
        description = entity.getDescription();
        price = entity.getPrice();
        imgUrl = entity.getImgUrl();
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public double getPrice() {
        return price;
    }

    public String getImgUrl() {
        return imgUrl;
    }
}
