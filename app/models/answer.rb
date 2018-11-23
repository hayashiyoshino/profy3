class Answer < ApplicationRecord
  after_create :create_feed_content

  belongs_to :question
  belongs_to :user
  has_one :feed_content, as: :content, dependent: :destroy

  private
  def create_feed_content
    self.feed_content = FeedContent.create(group_id: question.group_id, updated_at: updated_at)
  end
end
