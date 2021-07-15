package herald.birat.meme.dao;

	import java.util.List;

	import herald.birat.meme.entities.EImage;

	public interface ImageDao {
		
		public boolean saveImage(EImage image);
		public List<EImage> getAllImages();
		public EImage getImageById(int id);

	}