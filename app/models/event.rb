class Event < ActiveRecord::Base
	belongs_to :host, class_name: :user
	has_many :questions
	has_and_belongs_to_many :users
end
