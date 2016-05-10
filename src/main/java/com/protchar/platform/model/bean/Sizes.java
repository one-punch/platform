package model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by zbin on 16/5/10.
 */
@Entity
@IdClass(SizesPK.class)
public class Sizes {
    private int id;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Timestamp deletedAt;
    private String languageCode;
    private Byte publishStatus;
    private Integer position;
    private String name;
    private String code;

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

    @Id
    @Column(name = "language_code")
    public String getLanguageCode() {
        return languageCode;
    }

    public void setLanguageCode(String languageCode) {
        this.languageCode = languageCode;
    }

    @Basic
    @Column(name = "publish_status")
    public Byte getPublishStatus() {
        return publishStatus;
    }

    public void setPublishStatus(Byte publishStatus) {
        this.publishStatus = publishStatus;
    }

    @Basic
    @Column(name = "position")
    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "code")
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Sizes sizes = (Sizes) o;

        if (id != sizes.id) return false;
        if (createdAt != null ? !createdAt.equals(sizes.createdAt) : sizes.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(sizes.updatedAt) : sizes.updatedAt != null) return false;
        if (deletedAt != null ? !deletedAt.equals(sizes.deletedAt) : sizes.deletedAt != null) return false;
        if (languageCode != null ? !languageCode.equals(sizes.languageCode) : sizes.languageCode != null) return false;
        if (publishStatus != null ? !publishStatus.equals(sizes.publishStatus) : sizes.publishStatus != null)
            return false;
        if (position != null ? !position.equals(sizes.position) : sizes.position != null) return false;
        if (name != null ? !name.equals(sizes.name) : sizes.name != null) return false;
        if (code != null ? !code.equals(sizes.code) : sizes.code != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        result = 31 * result + (deletedAt != null ? deletedAt.hashCode() : 0);
        result = 31 * result + (languageCode != null ? languageCode.hashCode() : 0);
        result = 31 * result + (publishStatus != null ? publishStatus.hashCode() : 0);
        result = 31 * result + (position != null ? position.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (code != null ? code.hashCode() : 0);
        return result;
    }
}