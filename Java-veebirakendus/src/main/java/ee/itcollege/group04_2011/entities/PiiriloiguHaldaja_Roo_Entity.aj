// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.entities;

import ee.itcollege.group04_2011.entities.PiiriloiguHaldaja;
import java.lang.Integer;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PiiriloiguHaldaja_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager PiiriloiguHaldaja.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer PiiriloiguHaldaja.version;
    
    public Integer PiiriloiguHaldaja.getVersion() {
        return this.version;
    }
    
    public void PiiriloiguHaldaja.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void PiiriloiguHaldaja.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PiiriloiguHaldaja.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PiiriloiguHaldaja attached = PiiriloiguHaldaja.findPiiriloiguHaldaja(this.piiriloiguHaldajaId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PiiriloiguHaldaja.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PiiriloiguHaldaja.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PiiriloiguHaldaja PiiriloiguHaldaja.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PiiriloiguHaldaja merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PiiriloiguHaldaja.entityManager() {
        EntityManager em = new PiiriloiguHaldaja().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PiiriloiguHaldaja.countPiiriloiguHaldajas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PiiriloiguHaldaja o", Long.class).getSingleResult();
    }
    
    public static List<PiiriloiguHaldaja> PiiriloiguHaldaja.findAllPiiriloiguHaldajas() {
        return entityManager().createQuery("SELECT o FROM PiiriloiguHaldaja o", PiiriloiguHaldaja.class).getResultList();
    }
    
    public static PiiriloiguHaldaja PiiriloiguHaldaja.findPiiriloiguHaldaja(int piiriloiguHaldajaId) {
        return entityManager().find(PiiriloiguHaldaja.class, piiriloiguHaldajaId);
    }
    
    public static List<PiiriloiguHaldaja> PiiriloiguHaldaja.findPiiriloiguHaldajaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PiiriloiguHaldaja o", PiiriloiguHaldaja.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
