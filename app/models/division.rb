class Division < ActiveRecord::Base
  acts_as_nested_set
  default_scope { order('lft ASC') }

  has_many :staffs
end
