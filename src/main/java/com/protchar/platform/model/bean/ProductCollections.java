package com.protchar.platform.model.bean;

import javax.persistence.*;

/**
 * Created by zbin on 16/5/10.
 */
@Entity
@Table(name = "product_collections", schema = "platform", catalog = "")
@IdClass(ProductCollectionsPK.class)
public class ProductCollections {
    private int productId;
    private String productLanguageCode;
    private int collectionId;
    private String collectionLanguageCode;

    @Id
    @Column(name = "product_id")
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Id
    @Column(name = "product_language_code")
    public String getProductLanguageCode() {
        return productLanguageCode;
    }

    public void setProductLanguageCode(String productLanguageCode) {
        this.productLanguageCode = productLanguageCode;
    }

    @Id
    @Column(name = "collection_id")
    public int getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }

    @Id
    @Column(name = "collection_language_code")
    public String getCollectionLanguageCode() {
        return collectionLanguageCode;
    }

    public void setCollectionLanguageCode(String collectionLanguageCode) {
        this.collectionLanguageCode = collectionLanguageCode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProductCollections that = (ProductCollections) o;

        if (productId != that.productId) return false;
        if (collectionId != that.collectionId) return false;
        if (productLanguageCode != null ? !productLanguageCode.equals(that.productLanguageCode) : that.productLanguageCode != null)
            return false;
        if (collectionLanguageCode != null ? !collectionLanguageCode.equals(that.collectionLanguageCode) : that.collectionLanguageCode != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = productId;
        result = 31 * result + (productLanguageCode != null ? productLanguageCode.hashCode() : 0);
        result = 31 * result + collectionId;
        result = 31 * result + (collectionLanguageCode != null ? collectionLanguageCode.hashCode() : 0);
        return result;
    }
}
