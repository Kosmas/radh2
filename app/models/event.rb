class Event < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :organisers, class_name: "User"
end
