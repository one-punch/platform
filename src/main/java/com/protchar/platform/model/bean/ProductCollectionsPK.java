package model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by zbin on 16/5/10.
 */
public class ProductCollectionsPK implements Serializable {
    private int productId;
    private String productLanguageCode;
    private int collectionId;
    private String collectionLanguageCode;

    @Column(name = "product_id")
    @Id
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Column(name = "product_language_code")
    @Id
    public String getProductLanguageCode() {
        return productLanguageCode;
    }

    public void setProductLanguageCode(String productLanguageCode) {
        this.productLanguageCode = productLanguageCode;
    }

    @Column(name = "collection_id")
    @Id
    public int getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }

    @Column(name = "collection_language_code")
    @Id
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

        ProductCollectionsPK that = (ProductCollectionsPK) o;

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
