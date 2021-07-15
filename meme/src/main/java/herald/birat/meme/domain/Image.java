package herald.birat.meme.domain;

	import javax.validation.constraints.Size;

	import org.springframework.web.multipart.commons.CommonsMultipartFile;

	public class Image {
		
		private int id;
		
		private String caption;
		
		private String imageUrl;
		
		private String uploader;
		
		private CommonsMultipartFile imageFile;
		
		
		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getCaption() {
			return caption;
		}

		public void setCaption(String caption) {
			this.caption = caption;
		}

		public String getImageUrl() {
			return imageUrl;
		}

		public void setImageUrl(String imageUrl) {
			this.imageUrl = imageUrl;
		}

		public String getUploader() {
			return uploader;
		}

		public void setUploader(String uploader) {
			this.uploader = uploader;
		}

		public CommonsMultipartFile getImageFile() {
			return imageFile;
		}

		public void setImageFile(CommonsMultipartFile imageFile) {
			this.imageFile = imageFile;
		}
	}
