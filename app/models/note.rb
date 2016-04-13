class Note < ActiveRecord::Base
  validates :symptoms, :diagnosis, :conclusion, :assigning, presence: true
end
