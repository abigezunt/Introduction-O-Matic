class Event < ActiveRecord::Base
	belongs_to :host
	has_many :questions
	has_many :users
end
