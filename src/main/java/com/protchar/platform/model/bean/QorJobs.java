package com.protchar.platform.model.bean;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by zbin on 16/5/10.
 */
@Entity
@Table(name = "qor_jobs", schema = "platform", catalog = "")
public class QorJobs {
    private int id;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Timestamp deletedAt;
    private String status;
    private Integer progress;
    private String progressText;
    private String log;
    private String resultsTable;
    private String createdBy;
    private String updatedBy;
    private String kind;
    private String value;

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
    @Column(name = "status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Basic
    @Column(name = "progress")
    public Integer getProgress() {
        return progress;
    }

    public void setProgress(Integer progress) {
        this.progress = progress;
    }

    @Basic
    @Column(name = "progress_text")
    public String getProgressText() {
        return progressText;
    }

    public void setProgressText(String progressText) {
        this.progressText = progressText;
    }

    @Basic
    @Column(name = "log")
    public String getLog() {
        return log;
    }

    public void setLog(String log) {
        this.log = log;
    }

    @Basic
    @Column(name = "results_table")
    public String getResultsTable() {
        return resultsTable;
    }

    public void setResultsTable(String resultsTable) {
        this.resultsTable = resultsTable;
    }

    @Basic
    @Column(name = "created_by")
    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Basic
    @Column(name = "updated_by")
    public String getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
    }

    @Basic
    @Column(name = "kind")
    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    @Basic
    @Column(name = "value")
    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        QorJobs qorJobs = (QorJobs) o;

        if (id != qorJobs.id) return false;
        if (createdAt != null ? !createdAt.equals(qorJobs.createdAt) : qorJobs.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(qorJobs.updatedAt) : qorJobs.updatedAt != null) return false;
        if (deletedAt != null ? !deletedAt.equals(qorJobs.deletedAt) : qorJobs.deletedAt != null) return false;
        if (status != null ? !status.equals(qorJobs.status) : qorJobs.status != null) return false;
        if (progress != null ? !progress.equals(qorJobs.progress) : qorJobs.progress != null) return false;
        if (progressText != null ? !progressText.equals(qorJobs.progressText) : qorJobs.progressText != null)
            return false;
        if (log != null ? !log.equals(qorJobs.log) : qorJobs.log != null) return false;
        if (resultsTable != null ? !resultsTable.equals(qorJobs.resultsTable) : qorJobs.resultsTable != null)
            return false;
        if (createdBy != null ? !createdBy.equals(qorJobs.createdBy) : qorJobs.createdBy != null) return false;
        if (updatedBy != null ? !updatedBy.equals(qorJobs.updatedBy) : qorJobs.updatedBy != null) return false;
        if (kind != null ? !kind.equals(qorJobs.kind) : qorJobs.kind != null) return false;
        if (value != null ? !value.equals(qorJobs.value) : qorJobs.value != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        result = 31 * result + (deletedAt != null ? deletedAt.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (progress != null ? progress.hashCode() : 0);
        result = 31 * result + (progressText != null ? progressText.hashCode() : 0);
        result = 31 * result + (log != null ? log.hashCode() : 0);
        result = 31 * result + (resultsTable != null ? resultsTable.hashCode() : 0);
        result = 31 * result + (createdBy != null ? createdBy.hashCode() : 0);
        result = 31 * result + (updatedBy != null ? updatedBy.hashCode() : 0);
        result = 31 * result + (kind != null ? kind.hashCode() : 0);
        result = 31 * result + (value != null ? value.hashCode() : 0);
        return result;
    }
}
