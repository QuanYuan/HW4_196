class President < ActiveRecord::Base
  attr_accessible :age, :name, :office_time
  has_many :subordinates
end
