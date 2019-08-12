class Post < ApplicationRecord
  has_rich_text :content

  def summary
    "coming soon..."
  end
end
