class Question < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :answers

  validates_presence_of :user_id, :text, :group_id
end
