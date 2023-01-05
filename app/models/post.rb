class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :body
  has_rich_text :body
  has_many :comments, dependent: :destroy
  scope :published, -> { where("published_at <= ?", DateTime.now)
                           .or(where(published_at: nil))}
end
