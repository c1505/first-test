class Post < ActiveRecord::Base
  validates :title, presence: true

  def yell
    title.upcase + '!'
  end
end
