class Todo < ActiveRecord::Base
  attr_accessible :name, :note, :viewed_at
end
