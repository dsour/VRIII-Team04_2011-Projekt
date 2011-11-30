// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.group04_2011.entities;

import ee.itcollege.group04_2011.entities.ObjektiLiik;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ObjektiLiik_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager ObjektiLiik.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer ObjektiLiik.version;
    
    public Integer ObjektiLiik.getVersion() {
        return this.version;
    }
    
    public void ObjektiLiik.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void ObjektiLiik.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ObjektiLiik.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ObjektiLiik attached = ObjektiLiik.findObjektiLiik(this.objektLiikId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ObjektiLiik.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ObjektiLiik.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ObjektiLiik ObjektiLiik.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ObjektiLiik merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager ObjektiLiik.entityManager() {
        EntityManager em = new ObjektiLiik().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ObjektiLiik.countObjektiLiiks() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ObjektiLiik o", Long.class).getSingleResult();
    }
    
    public static List<ObjektiLiik> ObjektiLiik.findAllObjektiLiiks() {
        return entityManager().createQuery("SELECT o FROM ObjektiLiik o", ObjektiLiik.class).getResultList();
    }
    
    public static ObjektiLiik ObjektiLiik.findObjektiLiik(Long objektLiikId) {
        if (objektLiikId == null) return null;
        return entityManager().find(ObjektiLiik.class, objektLiikId);
    }
    
    public static List<ObjektiLiik> ObjektiLiik.findObjektiLiikEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ObjektiLiik o", ObjektiLiik.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
