// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.entities;

import ee.itcollege.group04_2011.entities.AmetVaeosa;
import java.lang.Integer;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AmetVaeosa_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager AmetVaeosa.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer AmetVaeosa.version;
    
    public Integer AmetVaeosa.getVersion() {
        return this.version;
    }
    
    public void AmetVaeosa.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void AmetVaeosa.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AmetVaeosa.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AmetVaeosa attached = AmetVaeosa.findAmetVaeosa(this.ametVaeosasId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AmetVaeosa.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AmetVaeosa.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AmetVaeosa AmetVaeosa.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AmetVaeosa merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager AmetVaeosa.entityManager() {
        EntityManager em = new AmetVaeosa().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AmetVaeosa.countAmetVaeosas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AmetVaeosa o", Long.class).getSingleResult();
    }
    
    public static List<AmetVaeosa> AmetVaeosa.findAllAmetVaeosas() {
        return entityManager().createQuery("SELECT o FROM AmetVaeosa o", AmetVaeosa.class).getResultList();
    }
    
    public static AmetVaeosa AmetVaeosa.findAmetVaeosa(int ametVaeosasId) {
        return entityManager().find(AmetVaeosa.class, ametVaeosasId);
    }
    
    public static List<AmetVaeosa> AmetVaeosa.findAmetVaeosaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AmetVaeosa o", AmetVaeosa.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
