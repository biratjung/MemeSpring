package herald.birat.meme.services;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import herald.birat.meme.dao.UserDao;
import herald.birat.meme.domain.User;
import herald.birat.meme.entities.EUser;
import herald.birat.meme.dao.ImageDao;
import herald.birat.meme.domain.Image;
import herald.birat.meme.entities.EImage;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	
	@Autowired
	private UserDao userdaoimpl;
	
	@Autowired
	private ImageDao imagedaoimpl;
	
	
	public boolean registerUser(User user)  {
		
		//first check if user already exists
		EUser currentUser = userdaoimpl.getUser(user.getUsername());
		
		
		//add new user to db
		EUser dbuser = new EUser();
		
		dbuser.setAddress(user.getAddress());
		dbuser.setEmail(user.getEmail());
		dbuser.setFname(user.getFname());
		dbuser.setLname(user.getLname());
		dbuser.setPhoneno(user.getPhoneno());
		dbuser.setUsername(user.getUsername());
		dbuser.setRole(2);
	
		//use bycrypt for hashing
		String hashedpw = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		dbuser.setPassword(hashedpw);
		
		boolean result=userdaoimpl.saveUser(dbuser);
		return result;	
	}

public List<Image> getAllImages() {
		
		//first we need to get all the images from database .. for that we need to ask dao layer to do it
		List<EImage> alldbimages = imagedaoimpl.getAllImages();
		
		//if no images were found in db , return null
		if(alldbimages == null || alldbimages.size()==0)
			return null;
		
		//change entity objects to domain objects
		List<Image> allimages = new ArrayList<Image>();
		for(EImage ep:alldbimages) {
			Image i = new Image();
			i.setId(ep.getId());
			i.setImageUrl(ep.getImageurl());
			i.setUploader(ep.getUploader());
			i.setCaption(ep.getCaption());
			allimages.add(i);
		}
		
		return allimages;	
		
	}	

public List<Image> getAllSaveImages(List<Integer> ids) {
	
	List<Image> allimages = new ArrayList<Image>();
	
	for(Integer i:ids) {
		EImage ep = imagedaoimpl.getImageById(i);
		Image s = new Image();
		s.setId(ep.getId());
		s.setImageUrl(ep.getImageurl());
		s.setUploader(ep.getUploader());
		s.setCaption(ep.getCaption());
		allimages.add(s);
	}
	
	return allimages;	
	
}	
	
     
}
