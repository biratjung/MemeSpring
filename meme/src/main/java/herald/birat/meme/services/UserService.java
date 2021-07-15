package herald.birat.meme.services;

import herald.birat.meme.domain.User;
import herald.birat.meme.domain.Image;

import java.util.List;

import herald.birat.meme.domain.*;

public interface UserService {
	
	public boolean registerUser(User user);
	public List<Image> getAllImages();
	public List<Image> getAllSaveImages(List<Integer> ids);
}
