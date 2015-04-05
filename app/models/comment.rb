class Comment < ActiveRecord::Base
  belongs_to :work, dependent: :destroy
  belongs_to :user
end
