/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Dylan
 */
@Stateless
public class BookFacade implements BookFacadeLocal {

    @PersistenceContext
    private EntityManager em;

    @Override
    public void create(BookEntity book) {
        em.persist(book);
    }

    @Override
    public void edit(BookEntity book) {
        em.merge(book);
    }

    @Override
    public void remove(BookEntity book) {
        em.remove(book);
    }

    @Override
    public BookEntity find(Object id) {
        return em.find(ejb.BookEntity.class, id);
    }

    @Override
    public List<BookEntity> findAll() {
        return em.createQuery("select object(o) from BookEntity as o").getResultList();   
    }
    
    
}
