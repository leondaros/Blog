class Post < ApplicationRecord

  validates :title,presence: true
  validates :description , length:{minimum:5}

  scope :search_by_tag, ->(tag){
    unless tag.present?
      return all
    end
    where "tag like ?","%#{tag}%"
  }

end
