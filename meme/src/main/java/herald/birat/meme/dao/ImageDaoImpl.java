package herald.birat.meme.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import herald.birat.meme.entities.EImage;
import herald.birat.meme.dao.ImageDao;


@Repository
public class ImageDaoImpl implements ImageDao {

	@PersistenceContext
	private EntityManager manager;
	
	public boolean saveImage(EImage image) {
		try {
			manager.persist(image);
			return true;
		}catch (Exception e) {
			return false;
		}
	}

	
	public EImage getImageById(int id) {
		
		 Query q =manager.createQuery("SELECT c FROM Eimage c WHERE c.imageid = :idss");
		 q.setParameter("idss",id);
		 EImage u = (EImage) q.getSingleResult();
		 return u;
	}

	public List<EImage> getAllImages() {
		Query q =manager.createQuery("SELECT c FROM EImage c");
		List<EImage> dd= q.getResultList();
		return dd;
		}

}
