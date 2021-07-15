package herald.birat.meme.dao;

import herald.birat.meme.entities.EUser;

public interface UserDao {
	
	public boolean saveUser(EUser user);
	public EUser getUser(String username);

}
