class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :details, presence: true
  validates :date, presence: true
  validates :time, presence: true


  belongs_to :user
end
