// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sparklytix.socialme.model;

import com.sparklytix.socialme.model.SocialUserRegistration;
import java.lang.Long;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SocialUserRegistration_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager SocialUserRegistration.entityManager;
    
    @Transactional
    public void SocialUserRegistration.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SocialUserRegistration.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SocialUserRegistration attached = SocialUserRegistration.findSocialUserRegistration(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SocialUserRegistration.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SocialUserRegistration.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SocialUserRegistration SocialUserRegistration.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SocialUserRegistration merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager SocialUserRegistration.entityManager() {
        EntityManager em = new SocialUserRegistration().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SocialUserRegistration.countSocialUserRegistrations() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SocialUserRegistration o", Long.class).getSingleResult();
    }
    
    public static List<SocialUserRegistration> SocialUserRegistration.findAllSocialUserRegistrations() {
        return entityManager().createQuery("SELECT o FROM SocialUserRegistration o", SocialUserRegistration.class).getResultList();
    }
    
    public static SocialUserRegistration SocialUserRegistration.findSocialUserRegistration(Long id) {
        if (id == null) return null;
        return entityManager().find(SocialUserRegistration.class, id);
    }
    
    public static List<SocialUserRegistration> SocialUserRegistration.findSocialUserRegistrationEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SocialUserRegistration o", SocialUserRegistration.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
