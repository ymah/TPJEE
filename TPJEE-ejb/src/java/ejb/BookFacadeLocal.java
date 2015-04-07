/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import java.util.List;
import javax.ejb.Local;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Dylan
 */
@Local
public interface BookFacadeLocal {

    void create(BookEntity book);

    void edit(BookEntity book);

    void remove(BookEntity book);

    BookEntity find(Object id);

    List<BookEntity> findAll();    
    
}
