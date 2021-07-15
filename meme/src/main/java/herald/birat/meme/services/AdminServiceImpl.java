package herald.birat.meme.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import herald.birat.meme.dao.ImageDao;
import herald.birat.meme.domain.Image;
import herald.birat.meme.entities.EImage;
import herald.birat.meme.services.AdminService;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	ImageDao imagedaoimpl;

public boolean addNewImage(Image image) {
		
		EImage dbimage = new EImage();
		dbimage.setImageurl(image.getImageUrl());
		dbimage.setUploader(image.getUploader());
		dbimage.setCaption(image.getCaption());
		
		boolean databaseaddresult = imagedaoimpl.saveImage(dbimage);
		return databaseaddresult;
		
	}

}
