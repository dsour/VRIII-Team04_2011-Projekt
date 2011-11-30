// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.entities;

import ee.itcollege.group04_2011.entities.PiiripunktiAlluvus;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PiiripunktiAlluvus_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager PiiripunktiAlluvus.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer PiiripunktiAlluvus.version;
    
    public Integer PiiripunktiAlluvus.getVersion() {
        return this.version;
    }
    
    public void PiiripunktiAlluvus.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void PiiripunktiAlluvus.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PiiripunktiAlluvus.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PiiripunktiAlluvus attached = PiiripunktiAlluvus.findPiiripunktiAlluvus(this.piiripunktiAlluvusId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PiiripunktiAlluvus.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PiiripunktiAlluvus.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PiiripunktiAlluvus PiiripunktiAlluvus.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PiiripunktiAlluvus merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PiiripunktiAlluvus.entityManager() {
        EntityManager em = new PiiripunktiAlluvus().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PiiripunktiAlluvus.countPiiripunktiAlluvuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PiiripunktiAlluvus o", Long.class).getSingleResult();
    }
    
    public static List<PiiripunktiAlluvus> PiiripunktiAlluvus.findAllPiiripunktiAlluvuses() {
        return entityManager().createQuery("SELECT o FROM PiiripunktiAlluvus o", PiiripunktiAlluvus.class).getResultList();
    }
    
    public static PiiripunktiAlluvus PiiripunktiAlluvus.findPiiripunktiAlluvus(Long piiripunktiAlluvusId) {
        if (piiripunktiAlluvusId == null) return null;
        return entityManager().find(PiiripunktiAlluvus.class, piiripunktiAlluvusId);
    }
    
    public static List<PiiripunktiAlluvus> PiiripunktiAlluvus.findPiiripunktiAlluvusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PiiripunktiAlluvus o", PiiripunktiAlluvus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
