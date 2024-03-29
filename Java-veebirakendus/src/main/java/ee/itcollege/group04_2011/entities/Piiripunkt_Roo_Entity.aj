// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.entities;

import ee.itcollege.group04_2011.entities.Piiripunkt;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Piiripunkt_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Piiripunkt.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer Piiripunkt.version;
    
    public Integer Piiripunkt.getVersion() {
        return this.version;
    }
    
    public void Piiripunkt.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Piiripunkt.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Piiripunkt.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Piiripunkt attached = Piiripunkt.findPiiripunkt(this.piiripunktId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Piiripunkt.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Piiripunkt.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Piiripunkt Piiripunkt.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Piiripunkt merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Piiripunkt.entityManager() {
        EntityManager em = new Piiripunkt().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Piiripunkt.countPiiripunkts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Piiripunkt o", Long.class).getSingleResult();
    }
    
    public static List<Piiripunkt> Piiripunkt.findAllPiiripunkts() {
        return entityManager().createQuery("SELECT o FROM Piiripunkt o", Piiripunkt.class).getResultList();
    }
    
    public static Piiripunkt Piiripunkt.findPiiripunkt(Long piiripunktId) {
        if (piiripunktId == null) return null;
        return entityManager().find(Piiripunkt.class, piiripunktId);
    }
    
    public static List<Piiripunkt> Piiripunkt.findPiiripunktEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Piiripunkt o", Piiripunkt.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
