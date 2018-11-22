class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_one :feed_content, as: :content, dependent: :destroy
end
