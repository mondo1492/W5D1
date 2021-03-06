class Post < ApplicationRecord
  validates :title, :url, :content, :subs, :author, presence: true

  belongs_to :author,
    class_name: "User",
    foreign_key: :author_id

  has_many :post_subs

  has_many :subs,
    through: :post_subs,
    source: :sub

end
