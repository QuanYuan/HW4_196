class Subordinate < ActiveRecord::Base
  attr_accessible :name, :work_for
  belongs_to :president
end
