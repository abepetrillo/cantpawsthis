class Post < ApplicationRecord
  has_rich_text :content
  has_one_attached :featured_image

  def summary
    content.to_plain_text[0..100]
  end

  def featured_image_url
   if self.featured_image.attachment
     self.featured_image.attachment.service_url
     end
   end
end
