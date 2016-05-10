package model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by zbin on 16/5/10.
 */
@Entity
@IdClass(SettingsPK.class)
public class Settings {
    private int id;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Timestamp deletedAt;
    private Integer shippingFee;
    private Integer giftWrappingFee;
    private Integer codFee;
    private Integer taxRate;
    private String address;
    private String city;
    private String region;
    private String country;
    private String zip;
    private Double latitude;
    private Double longitude;
    private String languageCode;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "created_at")
    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    @Basic
    @Column(name = "updated_at")
    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Basic
    @Column(name = "deleted_at")
    public Timestamp getDeletedAt() {
        return deletedAt;
    }

    public void setDeletedAt(Timestamp deletedAt) {
        this.deletedAt = deletedAt;
    }

    @Basic
    @Column(name = "shipping_fee")
    public Integer getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(Integer shippingFee) {
        this.shippingFee = shippingFee;
    }

    @Basic
    @Column(name = "gift_wrapping_fee")
    public Integer getGiftWrappingFee() {
        return giftWrappingFee;
    }

    public void setGiftWrappingFee(Integer giftWrappingFee) {
        this.giftWrappingFee = giftWrappingFee;
    }

    @Basic
    @Column(name = "cod_fee")
    public Integer getCodFee() {
        return codFee;
    }

    public void setCodFee(Integer codFee) {
        this.codFee = codFee;
    }

    @Basic
    @Column(name = "tax_rate")
    public Integer getTaxRate() {
        return taxRate;
    }

    public void setTaxRate(Integer taxRate) {
        this.taxRate = taxRate;
    }

    @Basic
    @Column(name = "address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "city")
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Basic
    @Column(name = "region")
    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    @Basic
    @Column(name = "country")
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Basic
    @Column(name = "zip")
    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    @Basic
    @Column(name = "latitude")
    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    @Basic
    @Column(name = "longitude")
    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    @Id
    @Column(name = "language_code")
    public String getLanguageCode() {
        return languageCode;
    }

    public void setLanguageCode(String languageCode) {
        this.languageCode = languageCode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Settings settings = (Settings) o;

        if (id != settings.id) return false;
        if (createdAt != null ? !createdAt.equals(settings.createdAt) : settings.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(settings.updatedAt) : settings.updatedAt != null) return false;
        if (deletedAt != null ? !deletedAt.equals(settings.deletedAt) : settings.deletedAt != null) return false;
        if (shippingFee != null ? !shippingFee.equals(settings.shippingFee) : settings.shippingFee != null)
            return false;
        if (giftWrappingFee != null ? !giftWrappingFee.equals(settings.giftWrappingFee) : settings.giftWrappingFee != null)
            return false;
        if (codFee != null ? !codFee.equals(settings.codFee) : settings.codFee != null) return false;
        if (taxRate != null ? !taxRate.equals(settings.taxRate) : settings.taxRate != null) return false;
        if (address != null ? !address.equals(settings.address) : settings.address != null) return false;
        if (city != null ? !city.equals(settings.city) : settings.city != null) return false;
        if (region != null ? !region.equals(settings.region) : settings.region != null) return false;
        if (country != null ? !country.equals(settings.country) : settings.country != null) return false;
        if (zip != null ? !zip.equals(settings.zip) : settings.zip != null) return false;
        if (latitude != null ? !latitude.equals(settings.latitude) : settings.latitude != null) return false;
        if (longitude != null ? !longitude.equals(settings.longitude) : settings.longitude != null) return false;
        if (languageCode != null ? !languageCode.equals(settings.languageCode) : settings.languageCode != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        result = 31 * result + (deletedAt != null ? deletedAt.hashCode() : 0);
        result = 31 * result + (shippingFee != null ? shippingFee.hashCode() : 0);
        result = 31 * result + (giftWrappingFee != null ? giftWrappingFee.hashCode() : 0);
        result = 31 * result + (codFee != null ? codFee.hashCode() : 0);
        result = 31 * result + (taxRate != null ? taxRate.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (region != null ? region.hashCode() : 0);
        result = 31 * result + (country != null ? country.hashCode() : 0);
        result = 31 * result + (zip != null ? zip.hashCode() : 0);
        result = 31 * result + (latitude != null ? latitude.hashCode() : 0);
        result = 31 * result + (longitude != null ? longitude.hashCode() : 0);
        result = 31 * result + (languageCode != null ? languageCode.hashCode() : 0);
        return result;
    }
}
