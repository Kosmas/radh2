class Event < ActiveRecord::Base
  belongs_to :organisers, class_name: "User"
end
