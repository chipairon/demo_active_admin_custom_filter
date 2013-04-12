class Owner < ActiveRecord::Base
  attr_accessible :name
  has_many :pets

  search_methods :search_owner_name

  # ActiveAdmin owner controller is called by filters using autocomplete
  # owner controller calls this to fill autocomplete list
  scope :search_owner_name, lambda { |query_string|
    safe_string = ActiveRecord::Base.send(:sanitize_sql_array, query_string)
    where("name like '%#{safe_string}%'")
  }
end
