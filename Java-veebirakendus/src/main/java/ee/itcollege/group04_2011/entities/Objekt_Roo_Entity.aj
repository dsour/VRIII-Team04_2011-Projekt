// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.entities;

import ee.itcollege.group04_2011.entities.Objekt;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Objekt_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Objekt.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer Objekt.version;
    
    public Integer Objekt.getVersion() {
        return this.version;
    }
    
    public void Objekt.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Objekt.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Objekt.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Objekt attached = Objekt.findObjekt(this.objektId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Objekt.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Objekt.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Objekt Objekt.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Objekt merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Objekt.entityManager() {
        EntityManager em = new Objekt().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Objekt.countObjekts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Objekt o", Long.class).getSingleResult();
    }
    
    public static List<Objekt> Objekt.findAllObjekts() {
        return entityManager().createQuery("SELECT o FROM Objekt o", Objekt.class).getResultList();
    }
    
    public static Objekt Objekt.findObjekt(Long objektId) {
        if (objektId == null) return null;
        return entityManager().find(Objekt.class, objektId);
    }
    
    public static List<Objekt> Objekt.findObjektEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Objekt o", Objekt.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
