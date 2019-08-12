class Post < ApplicationRecord
  has_rich_text :content

  def summary
    content.to_plain_text[0..50]
  end
end
