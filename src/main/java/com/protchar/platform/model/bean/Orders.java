package model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

/**
 * Created by zbin on 16/5/10.
 */
@Entity
public class Orders {
    private int id;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Timestamp deletedAt;
    private Integer userId;
    private Double paymentAmount;
    private String abandonedReason;
    private Integer discountValue;
    private String trackingNumber;
    private Timestamp shippedAt;
    private Timestamp cancelledAt;
    private Integer shippingAddressId;
    private Integer billingAddressId;
    private String state;

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
    @Column(name = "user_id")
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "payment_amount")
    public Double getPaymentAmount() {
        return paymentAmount;
    }

    public void setPaymentAmount(Double paymentAmount) {
        this.paymentAmount = paymentAmount;
    }

    @Basic
    @Column(name = "abandoned_reason")
    public String getAbandonedReason() {
        return abandonedReason;
    }

    public void setAbandonedReason(String abandonedReason) {
        this.abandonedReason = abandonedReason;
    }

    @Basic
    @Column(name = "discount_value")
    public Integer getDiscountValue() {
        return discountValue;
    }

    public void setDiscountValue(Integer discountValue) {
        this.discountValue = discountValue;
    }

    @Basic
    @Column(name = "tracking_number")
    public String getTrackingNumber() {
        return trackingNumber;
    }

    public void setTrackingNumber(String trackingNumber) {
        this.trackingNumber = trackingNumber;
    }

    @Basic
    @Column(name = "shipped_at")
    public Timestamp getShippedAt() {
        return shippedAt;
    }

    public void setShippedAt(Timestamp shippedAt) {
        this.shippedAt = shippedAt;
    }

    @Basic
    @Column(name = "cancelled_at")
    public Timestamp getCancelledAt() {
        return cancelledAt;
    }

    public void setCancelledAt(Timestamp cancelledAt) {
        this.cancelledAt = cancelledAt;
    }

    @Basic
    @Column(name = "shipping_address_id")
    public Integer getShippingAddressId() {
        return shippingAddressId;
    }

    public void setShippingAddressId(Integer shippingAddressId) {
        this.shippingAddressId = shippingAddressId;
    }

    @Basic
    @Column(name = "billing_address_id")
    public Integer getBillingAddressId() {
        return billingAddressId;
    }

    public void setBillingAddressId(Integer billingAddressId) {
        this.billingAddressId = billingAddressId;
    }

    @Basic
    @Column(name = "state")
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Orders orders = (Orders) o;

        if (id != orders.id) return false;
        if (createdAt != null ? !createdAt.equals(orders.createdAt) : orders.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(orders.updatedAt) : orders.updatedAt != null) return false;
        if (deletedAt != null ? !deletedAt.equals(orders.deletedAt) : orders.deletedAt != null) return false;
        if (userId != null ? !userId.equals(orders.userId) : orders.userId != null) return false;
        if (paymentAmount != null ? !paymentAmount.equals(orders.paymentAmount) : orders.paymentAmount != null)
            return false;
        if (abandonedReason != null ? !abandonedReason.equals(orders.abandonedReason) : orders.abandonedReason != null)
            return false;
        if (discountValue != null ? !discountValue.equals(orders.discountValue) : orders.discountValue != null)
            return false;
        if (trackingNumber != null ? !trackingNumber.equals(orders.trackingNumber) : orders.trackingNumber != null)
            return false;
        if (shippedAt != null ? !shippedAt.equals(orders.shippedAt) : orders.shippedAt != null) return false;
        if (cancelledAt != null ? !cancelledAt.equals(orders.cancelledAt) : orders.cancelledAt != null) return false;
        if (shippingAddressId != null ? !shippingAddressId.equals(orders.shippingAddressId) : orders.shippingAddressId != null)
            return false;
        if (billingAddressId != null ? !billingAddressId.equals(orders.billingAddressId) : orders.billingAddressId != null)
            return false;
        if (state != null ? !state.equals(orders.state) : orders.state != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        result = 31 * result + (deletedAt != null ? deletedAt.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (paymentAmount != null ? paymentAmount.hashCode() : 0);
        result = 31 * result + (abandonedReason != null ? abandonedReason.hashCode() : 0);
        result = 31 * result + (discountValue != null ? discountValue.hashCode() : 0);
        result = 31 * result + (trackingNumber != null ? trackingNumber.hashCode() : 0);
        result = 31 * result + (shippedAt != null ? shippedAt.hashCode() : 0);
        result = 31 * result + (cancelledAt != null ? cancelledAt.hashCode() : 0);
        result = 31 * result + (shippingAddressId != null ? shippingAddressId.hashCode() : 0);
        result = 31 * result + (billingAddressId != null ? billingAddressId.hashCode() : 0);
        result = 31 * result + (state != null ? state.hashCode() : 0);
        return result;
    }
}
