class Post < ApplicationRecord
    validates :title, :content, presence: true
    validates :title, uniqueness: true
    belongs_to :user, optional: true
    has_many :comments, dependent: :delete_all
end
