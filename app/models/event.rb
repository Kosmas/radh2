class Event < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  acts_as_taggable

  belongs_to :organisers, class_name: "User"
  has_many :taggings
  has_many :tags, through: :taggings

  def all_tags
    tags.map(&:name).join(", ")
  end
end
